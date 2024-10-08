import 'package:injectable/injectable.dart';
import 'package:online_exam/core/error_handeling/Result.dart';
import 'package:online_exam/features/auth/data/datasource/contracts/auth_datasource.dart';
import 'package:online_exam/features/auth/domain/contract/repository/auth_repo.dart';
import 'package:online_exam/features/auth/domain/model/app_user.dart';

@Injectable(as: AuthRepo)
class AuthRepositoryImpl implements AuthRepo {
  AuthOfflineDataSource authOfflineDataSource;
  AuthOnlineDataSource authOnlineDataSource;

  AuthRepositoryImpl(this.authOfflineDataSource, this.authOnlineDataSource);
  @override
  Future<Result<AppUser>> login(String email, String password) async {
    return authOnlineDataSource.login(email, password);
  }

  @override
  Future<Result<AppUser>> register(
      String userName,
      String firstName,
      String lastName,
      String email,
      String password,
      String rePassword,
      String phone) async {
    return authOnlineDataSource.register(
        userName, firstName, lastName, email, password, rePassword, phone);
  }
}
