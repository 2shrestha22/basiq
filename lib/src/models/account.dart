// ignore_for_file: library_private_types_in_public_api, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  const factory Account({
    /// Uniquely identifies the account.
    required String id,

    /// The name of the account holder as returned by the institution.
    /// No formatting is applied. Returns a string or null when not available.
    String? accountHolder,

    /// Full account number.
    required String accountNo,

    /// Funds that are available to an account holder for withdrawal or other
    /// use. This may include funds from an overdraft facility or line of
    /// credit. As well as funds classified as the available balance, such as
    /// from cleared and existing deposits.
    required String availableFunds,

    /// Amount of funds in the account right now - excluding any pending
    /// transactions. For a credit card this would be zero or the minus amount
    /// spent.
    required String balance,

    /// Describes the class(type) of accounts. transaction, savings,
    /// credit-card, mortgage, loan, investment, term-deposit, insurance,
    /// foreign, unknown.
    @JsonKey(name: 'class') required _AccountClass accountClass,

    /// The currency the funds are stored in, using ISO 4217 standard.
    required String currency,

    /// The id of the institution resource the account originated from.
    required String institution,

    /// Account name as defined by institution or user.
    required String name,

    /// Account status
    required AccountStatus status,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

@freezed
class _AccountClass with _$_AccountClass {
  /// Describes the class(type) of accounts. transaction, savings,
  /// credit-card, mortgage, loan, investment, term-deposit, insurance,
  /// foreign, unknown.
  const factory _AccountClass({
    /// Account type
    required String type,

    /// Product name
    required String product,
  }) = __AccountClass;

  factory _AccountClass.fromJson(Map<String, dynamic> json) =>
      _$_AccountClassFromJson(json);
}

enum AccountStatus { available, unavailable }
