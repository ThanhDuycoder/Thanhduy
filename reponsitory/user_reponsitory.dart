import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:user_for_list/model/user.dart';

class UserRepository {
  static const String url = 'https://jsonplaceholder.typicode.com/users';
  Future<List<User>> getUsers() async {
    try {
      final uri = await http.get(Uri.parse(url));
      if (uri.statusCode == 200) {
        final List<dynamic> jsonUri = json.decode(uri.body);
        return jsonUri.map((json) => User.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load users: ${uri.statusCode}');
      }
    } catch (e) {
      throw Exception('Have ERROR: $e');
    }
  }
}
