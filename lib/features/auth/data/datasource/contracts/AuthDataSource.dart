import '../../../../../core/error_handeling/Result.dart';
import '../../../domain/model/AppUser.dart';

abstract class AuthOnlineDataSource {
  Future<Result<AppUser>> login(String email, String password);
  Future<Result<AppUser>> register(String email, String password);
}

abstract class AuthOfflineDataSource {
  Future<Result<AppUser>> login(String email, String password);
}
