import 'package:dio/dio.dart';

import '../../basiq.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await Basiq.instance.authenticate();
    final optionWithToken = options
      ..headers.addAll({
        'Authorization': 'Bearer ${token.accessToken}',
      });
    return super.onRequest(optionWithToken, handler);
  }
}

// class InMemoryTokenStorage implements TokenStorage<OAuth2Token> {
//   OAuth2Token? _token;

//   @override
//   Future<void> delete() async {
//     _token = null;
//   }

//   @override
//   Future<OAuth2Token?> read() async {
//     return _token;
//   }

//   @override
//   Future<void> write(OAuth2Token token) async {
//     _token = token;
//   }
// }
