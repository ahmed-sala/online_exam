import 'package:injectable/injectable.dart';

import '../../../../core/error_handeling/Result.dart';
import '../../domain/contract/repository/AuthRepo.dart';
import '../../domain/model/AppUser.dart';
import '../datasource/contracts/AuthDataSource.dart';

@Injectable(as: AuthRepo)
class AuthRepositoryImpl implements AuthRepo {
  AuthOfflineDataSource authOfflineDataSource;
  AuthOnlineDataSource authOnlineDataSource;

  AuthRepositoryImpl(this.authOfflineDataSource, this.authOnlineDataSource);
  @override
  Future<Result<AppUser>> login(String email, String password) async {
    return Success<AppUser>();
  }

  @override
  Future<Result<AppUser>> register(String email, String password) async {
    return Success<AppUser>();
  }
}
