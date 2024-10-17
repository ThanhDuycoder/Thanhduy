import 'package:flutter/material.dart';
import 'package:user_for_list/model/user.dart';
import 'package:user_for_list/reponsitory/mockup.dart';
import 'package:user_for_list/user_page/user_item.dart';

class UserPage extends StatefulWidget {
  final Mockup repo;
  const UserPage({super.key, required this.repo});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  late Future<List<User>> _usersFuture;

  @override
  void initState() {
    super.initState();
    _usersFuture = widget.repo.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh sách người dùng'),
      ),
      body: FutureBuilder<List<User>>(
          future: _usersFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) =>
                      UserItem(user: snapshot.data![index]));
            } else {
              return Center(
                child: Text('No user found'),
              );
            }
          }),
    );
  }
}
