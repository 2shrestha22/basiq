import 'interceptor.dart';
import 'package:dio/dio.dart';

import '../../basiq.dart';
import '../client/client.dart';
export 'package:dio/dio.dart';
export '../models/basiq_exception.dart';

/// Adds auth interceptor.
///
/// Do not use with Authentication.
abstract class Api {
  final _dio = Dio(
    BaseOptions(
      baseUrl: 'https://au-api.basiq.io',
      headers: {'Accept': 'application/json'},
    ),
  )..interceptors.add(AuthInterceptor());

  BasiqClient get client => BasiqClient(_dio);

  Future<Token?> get token => Basiq.instance.authenticate();
}
