// ignore_for_file: library_private_types_in_public_api

import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String email,
    required String mobile,
    required String name,
    required _ListData connections,
    required _ListData accounts,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class _ListData with _$_ListData {
  const factory _ListData({
    required int count,
    required List<_Data> data,
  }) = __ListData;
  factory _ListData.fromJson(Map<String, dynamic> json) =>
      _$_ListDataFromJson(json);
}

@freezed
class _Data with _$_Data {
  const factory _Data({
    required String id,
  }) = __Data;
  factory _Data.fromJson(Map<String, dynamic> json) => _$_DataFromJson(json);
}
