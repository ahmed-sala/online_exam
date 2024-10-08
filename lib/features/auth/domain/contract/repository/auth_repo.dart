import 'package:online_exam/core/error_handeling/Result.dart';
import 'package:online_exam/features/auth/domain/model/app_user.dart';

abstract class AuthRepo {
  Future<Result<AppUser>> login(String email, String password);
  Future<Result<AppUser>> register(
      String userName,
      String firstName,
      String lastName,
      String email,
      String password,
      String rePassword,
      String phone);
}
