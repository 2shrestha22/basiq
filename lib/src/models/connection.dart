import 'package:freezed_annotation/freezed_annotation.dart';
part 'connection.freezed.dart';

@freezed
class Connection with _$Connection {
  const factory Connection({
    required String id,
    required DateTime createdDate,
    required DateTime lastUsed,
    required String institutionId,
    required String status,
  }) = _Connection;
}
