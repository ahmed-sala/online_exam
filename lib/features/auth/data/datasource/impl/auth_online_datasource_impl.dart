import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:online_exam/core/api_executer/api_extensions.dart';
import 'package:online_exam/core/error_handeling/Result.dart';
import 'package:online_exam/features/auth/data/api/api_manger.dart';
import 'package:online_exam/features/auth/data/api/model/request/register_request.dart';
import 'package:online_exam/features/auth/data/datasource/contracts/auth_datasource.dart';
import 'package:online_exam/features/auth/domain/model/app_user.dart';

@Injectable(as: AuthOnlineDataSource)
class AuthOnlineDatasourceImpl extends AuthOnlineDataSource {
  ApiManger apiManger;
  AuthOnlineDatasourceImpl(this.apiManger);
  @override
  Future<Result<AppUser>> login(String email, String password) async {
    return executeApi<AppUser>(
      () async {
        var result = await apiManger.login(email, password);
        return Success(data: result.toAppUser());
      },
    );
  }

  @override
  Future<Result<AppUser>> register(
      String userName,
      String firstName,
      String lastName,
      String email,
      String password,
      String rePassword,
      String phone) {
    return executeApi<AppUser>(
      () async {
        var requestBody = RegisterRequest(
          username: userName,
          firstName: firstName,
          lastName: lastName,
          email: email,
          password: password,
          rePassword: rePassword,
          phone: phone,
        );
        var result = await apiManger.register(requestBody);
        return Success(data: result.toAppUser());
      },
    );
  }
}
