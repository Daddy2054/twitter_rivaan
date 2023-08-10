class AppwriteConstants {
  static const String databaseId = '64d130dce008a49555c0';
  static const String projectId = '64d12bef09e66836040f';
  static const String endPoint = 'https://cloud.appwrite.io/v1';

  static const String userCollection = '64d3c4bd6bb3a0f4bfff';
  static const String tweetsCollection = '64d52797bb2dfe43a767';

  static const String imagesBucket = '64d537ba102927e25f04';

  static String imageUrl(String imageId) =>
      'https://cloud.appwrite.io/v1/storage/buckets/$imagesBucket/files/$imageId/view?project=$projectId&mode=admin';
}
