import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'model/response/AuthResponse.dart';

part 'RetrofitClient.g.dart';

@RestApi(baseUrl: "https://exam.elevateegy.com/")
abstract class RetrofitClient {
  factory RetrofitClient(Dio dio, {String? baseUrl}) = _RetrofitClient;

  @POST('/api/v1/auth/signin')
  Future<AuthResponse> login(@Body() Map<String, dynamic> body);
}
