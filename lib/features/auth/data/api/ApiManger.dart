import 'dart:async';

import 'package:injectable/injectable.dart';

import 'RetrofitClient.dart';
import 'model/response/AuthResponse.dart';

@injectable
@singleton
class ApiManger {
  final RetrofitClient _retrofitClient;
  @factoryMethod
  ApiManger(this._retrofitClient);
  Future<AuthResponse> login(String email, String password) async {
    var apiCall = await _retrofitClient.login({
      "email": email,
      "password": password,
    });
    return apiCall;
  }
}
