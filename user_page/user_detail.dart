import 'package:flutter/material.dart';
import 'package:user_for_list/model/user.dart';

class UserDetail extends StatelessWidget {
  final User user;
  const UserDetail({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text('Username'),
          subtitle: Text(user.username),
        ),
        ListTile(
          title: Text('Phone'),
          subtitle: Text(user.phone),
        ),
        ListTile(
          title: Text('Website'),
          subtitle: Text(user.website),
        ),
        ListTile(
          title: Text('Company'),
          subtitle: Text("${user.company.name}\n ${user.company.catchPhrase}"),
        ),
        ListTile(
          title: Text('Address'),
          subtitle: Text(
              '${user.address.street}, ${user.address.suite}\n ${user.address.city}, ${user.address.zipcode}'),
        ),
      ],
    );
  }
}
