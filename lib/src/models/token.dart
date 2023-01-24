// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Token {
  Token(
    this.accessToken,
    this.tokenType,
    this.expiryDate,
    this.userId,
  );

  /// The generated access token.
  final String accessToken;

  /// This value will always be Bearer.
  final String tokenType;

  /// This is only needed for tracking expiry time.
  final DateTime expiryDate;

  /// User id whose token is related to. We can refresh/reauthenticate
  /// token using this.
  final String userId;

  bool get expired => expiryDate.isBefore(DateTime.now());

  Token copyWith({
    String? accessToken,
    String? tokenType,
    DateTime? expiryDate,
    String? userId,
  }) {
    return Token(
      accessToken ?? this.accessToken,
      tokenType ?? this.tokenType,
      expiryDate ?? this.expiryDate,
      userId ?? this.userId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'tokenType': tokenType,
      'expiryDate': expiryDate.millisecondsSinceEpoch,
      'userId': userId,
    };
  }

  factory Token.fromMap(Map<String, dynamic> map) {
    return Token(
      map['accessToken'] as String,
      map['tokenType'] as String,
      DateTime.fromMillisecondsSinceEpoch(map['expiryDate'] as int),
      map['userId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Token.fromJson(String source) =>
      Token.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Token(accessToken: $accessToken, tokenType: $tokenType, expiryDate: $expiryDate, userId: $userId)';
  }

  @override
  bool operator ==(covariant Token other) {
    if (identical(this, other)) return true;

    return other.accessToken == accessToken &&
        other.tokenType == tokenType &&
        other.expiryDate == expiryDate &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    return accessToken.hashCode ^
        tokenType.hashCode ^
        expiryDate.hashCode ^
        userId.hashCode;
  }
}
