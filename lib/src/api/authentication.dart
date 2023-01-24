import 'storage.dart';
import '../basiq.dart';
import '../client/client.dart';
import '../models/basiq_exception.dart';
import '../models/scope.dart';
import '../models/token.dart';
import 'package:dio/dio.dart';

class Authentication {
  Authentication(this._storage);

  final BasiqClient _client = BasiqClient(Dio(
    BaseOptions(
      baseUrl: 'https://au-api.basiq.io',
    ),
  ));

  final BasiqStorage<Token> _storage;

  /// Trade your API key for an access token.
  ///
  /// The response will contain an access token which will allow you to make
  /// secure calls to the Basiq API. They expire every 60 minutes, so we
  /// recommend you store it globally and refresh 2-3 times an hour.
  Future<Token> authenticate({
    required String userId,
    Scope scope = Scope.clientAccess,
  }) async {
    try {
      final res = await _client.post(
        '/token',
        options: Options(
          headers: {
            'Authorization': 'Basic ${Basiq.instance.apiKey}',
            'Content-Type': 'application/x-www-form-urlencoded',
            'basiq-version': basiqVersion,
          },
        ),
        data: {
          'scope': scope.name,
          'userId': userId,
        },
      );
      final map = res.data as Map<String, dynamic>;

      return _storage.saveToken(Token(
        map['access_token'] as String,
        map['token_type'] as String,
        // Expiring 1 minute ahead just for safety.
        DateTime.now().add(Duration(seconds: (map['expires_in'] as int) - 60)),
        userId,
      ));
    } on DioError catch (e) {
      throw BasiqException.fromDioError(e);
    }
  }
}
