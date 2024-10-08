import '../../../../../core/error_handeling/Result.dart';
import '../../model/AppUser.dart';

abstract class AuthRepo {
  Future<Result<AppUser>> login(String email, String password);
  Future<Result<AppUser>> register(String email, String password);
}
