import '../models/token.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class BasiqStorage<T> {
  Future<T> saveToken(T token);
  Future<T?> getToken();
  Future<void> deleteAll();
}

class SecureBasiqStorage implements BasiqStorage<Token> {
  SecureBasiqStorage() {
    _secureStorage = const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
    );
  }

  late FlutterSecureStorage _secureStorage;

  @override
  Future<Token> saveToken(Token token) async {
    await _secureStorage.write(key: 'basiq', value: token.toJson());
    return token;
  }

  @override
  Future<Token?> getToken() async {
    final res = await _secureStorage.read(key: 'basiq');
    if (res != null) {
      return Token.fromJson(res);
    } else {
      return null;
    }
  }

  @override
  Future<void> deleteAll() => _secureStorage.deleteAll();
}

class InMemoryBasiqStorage implements BasiqStorage<Token> {
  Token? _token;
  @override
  Future<void> deleteAll() async {
    _token = null;
  }

  @override
  Future<Token?> getToken() async {
    return _token;
  }

  @override
  Future<Token> saveToken(Token token) async {
    _token = token;
    return token;
  }
}
