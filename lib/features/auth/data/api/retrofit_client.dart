import 'package:dio/dio.dart';
import 'package:online_exam/features/auth/data/api/model/response/auth_response.dart';
import 'package:retrofit/http.dart';

part 'retrofit_client.g.dart';

@RestApi(baseUrl: "https://exam.elevateegy.com/")
abstract class RetrofitClient {
  factory RetrofitClient(Dio dio, {String? baseUrl}) = _RetrofitClient;

  @POST('/api/v1/auth/signin')
  Future<AuthResponse> login(@Body() Map<String, dynamic> body);

  @POST('api/v1/auth/signup')
  Future<AuthResponse> register(@Body() Map<String, dynamic> body);
}
