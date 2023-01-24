// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  /// Uniquely identifies the account.
  String get id => throw _privateConstructorUsedError;

  /// The name of the account holder as returned by the institution.
  /// No formatting is applied. Returns a string or null when not available.
  String? get accountHolder => throw _privateConstructorUsedError;

  /// Full account number.
  String get accountNo => throw _privateConstructorUsedError;

  /// Funds that are available to an account holder for withdrawal or other
  /// use. This may include funds from an overdraft facility or line of
  /// credit. As well as funds classified as the available balance, such as
  /// from cleared and existing deposits.
  String get availableFunds => throw _privateConstructorUsedError;

  /// Amount of funds in the account right now - excluding any pending
  /// transactions. For a credit card this would be zero or the minus amount
  /// spent.
  String get balance => throw _privateConstructorUsedError;

  /// Describes the class(type) of accounts. transaction, savings,
  /// credit-card, mortgage, loan, investment, term-deposit, insurance,
  /// foreign, unknown.
  @JsonKey(name: 'class')
  _AccountClass get accountClass => throw _privateConstructorUsedError;

  /// The currency the funds are stored in, using ISO 4217 standard.
  String get currency => throw _privateConstructorUsedError;

  /// The id of the institution resource the account originated from.
  String get institution => throw _privateConstructorUsedError;

  /// Account name as defined by institution or user.
  String get name => throw _privateConstructorUsedError;

  /// Account status
  AccountStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call(
      {String id,
      String? accountHolder,
      String accountNo,
      String availableFunds,
      String balance,
      @JsonKey(name: 'class') _AccountClass accountClass,
      String currency,
      String institution,
      String name,
      AccountStatus status});

  _$AccountClassCopyWith<$Res> get accountClass;
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountHolder = freezed,
    Object? accountNo = null,
    Object? availableFunds = null,
    Object? balance = null,
    Object? accountClass = null,
    Object? currency = null,
    Object? institution = null,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      accountHolder: freezed == accountHolder
          ? _value.accountHolder
          : accountHolder // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNo: null == accountNo
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as String,
      availableFunds: null == availableFunds
          ? _value.availableFunds
          : availableFunds // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      accountClass: null == accountClass
          ? _value.accountClass
          : accountClass // ignore: cast_nullable_to_non_nullable
              as _AccountClass,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  _$AccountClassCopyWith<$Res> get accountClass {
    return _$AccountClassCopyWith<$Res>(_value.accountClass, (value) {
      return _then(_value.copyWith(accountClass: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$_AccountCopyWith(
          _$_Account value, $Res Function(_$_Account) then) =
      __$$_AccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? accountHolder,
      String accountNo,
      String availableFunds,
      String balance,
      @JsonKey(name: 'class') _AccountClass accountClass,
      String currency,
      String institution,
      String name,
      AccountStatus status});

  @override
  _$AccountClassCopyWith<$Res> get accountClass;
}

/// @nodoc
class __$$_AccountCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$_Account>
    implements _$$_AccountCopyWith<$Res> {
  __$$_AccountCopyWithImpl(_$_Account _value, $Res Function(_$_Account) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountHolder = freezed,
    Object? accountNo = null,
    Object? availableFunds = null,
    Object? balance = null,
    Object? accountClass = null,
    Object? currency = null,
    Object? institution = null,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_$_Account(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      accountHolder: freezed == accountHolder
          ? _value.accountHolder
          : accountHolder // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNo: null == accountNo
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as String,
      availableFunds: null == availableFunds
          ? _value.availableFunds
          : availableFunds // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      accountClass: null == accountClass
          ? _value.accountClass
          : accountClass // ignore: cast_nullable_to_non_nullable
              as _AccountClass,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Account implements _Account {
  const _$_Account(
      {required this.id,
      this.accountHolder,
      required this.accountNo,
      required this.availableFunds,
      required this.balance,
      @JsonKey(name: 'class') required this.accountClass,
      required this.currency,
      required this.institution,
      required this.name,
      required this.status});

  factory _$_Account.fromJson(Map<String, dynamic> json) =>
      _$$_AccountFromJson(json);

  /// Uniquely identifies the account.
  @override
  final String id;

  /// The name of the account holder as returned by the institution.
  /// No formatting is applied. Returns a string or null when not available.
  @override
  final String? accountHolder;

  /// Full account number.
  @override
  final String accountNo;

  /// Funds that are available to an account holder for withdrawal or other
  /// use. This may include funds from an overdraft facility or line of
  /// credit. As well as funds classified as the available balance, such as
  /// from cleared and existing deposits.
  @override
  final String availableFunds;

  /// Amount of funds in the account right now - excluding any pending
  /// transactions. For a credit card this would be zero or the minus amount
  /// spent.
  @override
  final String balance;

  /// Describes the class(type) of accounts. transaction, savings,
  /// credit-card, mortgage, loan, investment, term-deposit, insurance,
  /// foreign, unknown.
  @override
  @JsonKey(name: 'class')
  final _AccountClass accountClass;

  /// The currency the funds are stored in, using ISO 4217 standard.
  @override
  final String currency;

  /// The id of the institution resource the account originated from.
  @override
  final String institution;

  /// Account name as defined by institution or user.
  @override
  final String name;

  /// Account status
  @override
  final AccountStatus status;

  @override
  String toString() {
    return 'Account(id: $id, accountHolder: $accountHolder, accountNo: $accountNo, availableFunds: $availableFunds, balance: $balance, accountClass: $accountClass, currency: $currency, institution: $institution, name: $name, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Account &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountHolder, accountHolder) ||
                other.accountHolder == accountHolder) &&
            (identical(other.accountNo, accountNo) ||
                other.accountNo == accountNo) &&
            (identical(other.availableFunds, availableFunds) ||
                other.availableFunds == availableFunds) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.accountClass, accountClass) ||
                other.accountClass == accountClass) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      accountHolder,
      accountNo,
      availableFunds,
      balance,
      accountClass,
      currency,
      institution,
      name,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountCopyWith<_$_Account> get copyWith =>
      __$$_AccountCopyWithImpl<_$_Account>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountToJson(
      this,
    );
  }
}

abstract class _Account implements Account {
  const factory _Account(
      {required final String id,
      final String? accountHolder,
      required final String accountNo,
      required final String availableFunds,
      required final String balance,
      @JsonKey(name: 'class') required final _AccountClass accountClass,
      required final String currency,
      required final String institution,
      required final String name,
      required final AccountStatus status}) = _$_Account;

  factory _Account.fromJson(Map<String, dynamic> json) = _$_Account.fromJson;

  @override

  /// Uniquely identifies the account.
  String get id;
  @override

  /// The name of the account holder as returned by the institution.
  /// No formatting is applied. Returns a string or null when not available.
  String? get accountHolder;
  @override

  /// Full account number.
  String get accountNo;
  @override

  /// Funds that are available to an account holder for withdrawal or other
  /// use. This may include funds from an overdraft facility or line of
  /// credit. As well as funds classified as the available balance, such as
  /// from cleared and existing deposits.
  String get availableFunds;
  @override

  /// Amount of funds in the account right now - excluding any pending
  /// transactions. For a credit card this would be zero or the minus amount
  /// spent.
  String get balance;
  @override

  /// Describes the class(type) of accounts. transaction, savings,
  /// credit-card, mortgage, loan, investment, term-deposit, insurance,
  /// foreign, unknown.
  @JsonKey(name: 'class')
  _AccountClass get accountClass;
  @override

  /// The currency the funds are stored in, using ISO 4217 standard.
  String get currency;
  @override

  /// The id of the institution resource the account originated from.
  String get institution;
  @override

  /// Account name as defined by institution or user.
  String get name;
  @override

  /// Account status
  AccountStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_AccountCopyWith<_$_Account> get copyWith =>
      throw _privateConstructorUsedError;
}

_AccountClass _$_AccountClassFromJson(Map<String, dynamic> json) {
  return __AccountClass.fromJson(json);
}

/// @nodoc
mixin _$_AccountClass {
  /// Account type
  String get type => throw _privateConstructorUsedError;

  /// Product name
  String get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AccountClassCopyWith<_AccountClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AccountClassCopyWith<$Res> {
  factory _$AccountClassCopyWith(
          _AccountClass value, $Res Function(_AccountClass) then) =
      __$AccountClassCopyWithImpl<$Res, _AccountClass>;
  @useResult
  $Res call({String type, String product});
}

/// @nodoc
class __$AccountClassCopyWithImpl<$Res, $Val extends _AccountClass>
    implements _$AccountClassCopyWith<$Res> {
  __$AccountClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__AccountClassCopyWith<$Res>
    implements _$AccountClassCopyWith<$Res> {
  factory _$$__AccountClassCopyWith(
          _$__AccountClass value, $Res Function(_$__AccountClass) then) =
      __$$__AccountClassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String product});
}

/// @nodoc
class __$$__AccountClassCopyWithImpl<$Res>
    extends __$AccountClassCopyWithImpl<$Res, _$__AccountClass>
    implements _$$__AccountClassCopyWith<$Res> {
  __$$__AccountClassCopyWithImpl(
      _$__AccountClass _value, $Res Function(_$__AccountClass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? product = null,
  }) {
    return _then(_$__AccountClass(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__AccountClass implements __AccountClass {
  const _$__AccountClass({required this.type, required this.product});

  factory _$__AccountClass.fromJson(Map<String, dynamic> json) =>
      _$$__AccountClassFromJson(json);

  /// Account type
  @override
  final String type;

  /// Product name
  @override
  final String product;

  @override
  String toString() {
    return '_AccountClass(type: $type, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__AccountClass &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__AccountClassCopyWith<_$__AccountClass> get copyWith =>
      __$$__AccountClassCopyWithImpl<_$__AccountClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__AccountClassToJson(
      this,
    );
  }
}

abstract class __AccountClass implements _AccountClass {
  const factory __AccountClass(
      {required final String type,
      required final String product}) = _$__AccountClass;

  factory __AccountClass.fromJson(Map<String, dynamic> json) =
      _$__AccountClass.fromJson;

  @override

  /// Account type
  String get type;
  @override

  /// Product name
  String get product;
  @override
  @JsonKey(ignore: true)
  _$$__AccountClassCopyWith<_$__AccountClass> get copyWith =>
      throw _privateConstructorUsedError;
}
