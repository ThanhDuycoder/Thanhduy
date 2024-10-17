import 'package:flutter/material.dart';
import 'package:user_for_list/model/user.dart';
import 'user_detail.dart';

class UserItem extends StatelessWidget {
  final User user;
  const UserItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: CircleAvatar(
        child: Text(
          user.id.toString(),
        ),
      ),
      title: Text(user.name),
      subtitle: Text(user.email),
      children: [UserDetail(user: user)],
    );
  }
}
