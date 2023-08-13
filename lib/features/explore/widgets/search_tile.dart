import 'package:flutter/material.dart';
import 'package:twitter/features/user_profile/view/user_profile_view.dart';

import 'package:twitter/models/user_model.dart';
import 'package:twitter/theme/pallete.dart';

class SearchTile extends StatelessWidget {
  final UserModel userModel;
  const SearchTile({
    Key? key,
    required this.userModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(context, UserProfileView.route(userModel)),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(userModel.profilePic),
        radius: 30,
      ),
      title: Text(
        userModel.name,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '@${userModel.name}',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            userModel.bio,
            style: const TextStyle(
              color: Pallete.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
