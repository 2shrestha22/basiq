import 'package:dio/dio.dart';

class BasiqException {
  BasiqException(this.statusCode, this.detail);

  final int? statusCode;
  final String detail;

  factory BasiqException.fromDioError(DioError e) {
    if (e.response != null) {
      return BasiqException(
        e.response!.statusCode,
        (e.response!.data['data'] as List).first['detail'],
      );
    } else {
      // Something happened in setting up or sending the request that triggered an Error
      return BasiqException(null, e.message);
    }
  }
}

// {
//     "type": "list",
//     "correlationId": "8460eb45-dd61-4217-8ebc-0b707ce7508d",
//     "data": [
//         {
//             "type": "error",
//             "code": "access-denied",
//             "title": "Access denied.",
//             "detail": "Token has expired",
//             "source": null
//         }
//     ]
// }