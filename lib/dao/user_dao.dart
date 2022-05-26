

import 'package:floor/floor.dart';
import 'package:softwarica/entities/user_entites.dart';

@dao
abstract class UserDAO {
 @insert
  Future<void> register(User user);

  // login user
  @Query('SELECT * FROM user WHERE email = :email and password = :password')
  Future<User?> login(String email, String password);
}