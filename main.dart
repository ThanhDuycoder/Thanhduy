import 'package:flutter/material.dart';
import 'package:user_for_list/reponsitory/mockup.dart';
import 'package:user_for_list/reponsitory/user_reponsitory.dart';
import 'user_page/user_page.dart';

void main() {
  final repo = Mockup(UserRepository());
  runApp(MyApp(repo: repo));
}

class MyApp extends StatelessWidget {
  final Mockup repo;
  const MyApp({super.key, required this.repo});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Danh sách người dùng APP',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UserPage(repo: repo),
    );
  }
}
