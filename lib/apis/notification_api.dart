import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:twitter/core/providers.dart';

import 'package:twitter/core/type_defs.dart';
import 'package:twitter/models/notification_model.dart';

import '../constants/constants.dart';
import '../core/failure.dart';


final notificationAPIProvider = Provider((ref) {
  return NotificationAPI(db: ref.watch(appwriteDatabaseProvider));
});
abstract class INotificationAPI {
  FutureEitherVoid createNotification(Notification notification);
}

class NotificationAPI implements INotificationAPI {
  final Databases _db;
  NotificationAPI({
    required Databases db,
  }) : _db = db;
  @override
  FutureEitherVoid createNotification(Notification notification) async {
    try {
      await _db.createDocument(
        databaseId: AppwriteConstants.databaseId,
        collectionId: AppwriteConstants.notificationsCollection,
        documentId: ID.unique(),
        data: notification.toMap(),
      );
      return right(null);
    } on AppwriteException catch (e, st) {
      return left(
        Failure(
          e.message ?? 'Some unexpected error occured',
          st,
        ),
      );
    } catch (e, st) {
      return left(
        Failure(
          e.toString(),
          st,
        ),
      );
    }
  }
}
