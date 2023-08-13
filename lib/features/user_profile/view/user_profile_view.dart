import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter/features/user_profile/widget/user_profile.dart';
import 'package:twitter/models/user_model.dart';

class UserProfileView extends ConsumerWidget {
    static route(UserModel userModel) => MaterialPageRoute(
        builder: (context) =>  UserProfileView(
          userModel: userModel,
        ),
      );

  final UserModel userModel;
  const UserProfileView({required this.userModel, super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: UserProfile(user:userModel),
    );
  }
}
