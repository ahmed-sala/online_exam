import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../../../core/api_executer/api_extensions.dart';
import '../../../../../core/error_handeling/Result.dart';
import '../../../domain/model/AppUser.dart';
import '../../api/ApiManger.dart';
import '../contracts/AuthDataSource.dart';

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
  Future<Result<AppUser>> register(String email, String password) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
