import 'package:injectable/injectable.dart';

import '../../../../../core/error_handeling/Result.dart';
import '../../../domain/model/AppUser.dart';
import '../contracts/AuthDataSource.dart';

@Injectable(as: AuthOfflineDataSource)
class AuthOfflineDataSourceImpl implements AuthOfflineDataSource {
  @override
  Future<Result<AppUser>> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
