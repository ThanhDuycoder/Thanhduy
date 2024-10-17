import 'package:user_for_list/reponsitory/user_reponsitory.dart';
import 'package:user_for_list/model/user.dart';

class Mockup {
  final UserRepository _repository;
  Mockup(this._repository);

  Future<List<User>> getUsers() => _repository.getUsers();
}
