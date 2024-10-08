import 'package:injectable/injectable.dart';
import 'package:online_exam/core/error_handeling/Result.dart';
import 'package:online_exam/features/auth/data/datasource/contracts/auth_datasource.dart';
import 'package:online_exam/features/auth/domain/model/app_user.dart';

@Injectable(as: AuthOfflineDataSource)
class AuthOfflineDataSourceImpl implements AuthOfflineDataSource {
  @override
  Future<Result<AppUser>> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
