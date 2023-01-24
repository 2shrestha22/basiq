// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'institution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Institution _$InstitutionFromJson(Map<String, dynamic> json) {
  return _Institution.fromJson(json);
}

/// @nodoc
mixin _$Institution {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get shortName => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  Logo get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstitutionCopyWith<Institution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstitutionCopyWith<$Res> {
  factory $InstitutionCopyWith(
          Institution value, $Res Function(Institution) then) =
      _$InstitutionCopyWithImpl<$Res, Institution>;
  @useResult
  $Res call(
      {String id, String name, String shortName, String country, Logo logo});

  $LogoCopyWith<$Res> get logo;
}

/// @nodoc
class _$InstitutionCopyWithImpl<$Res, $Val extends Institution>
    implements $InstitutionCopyWith<$Res> {
  _$InstitutionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shortName = null,
    Object? country = null,
    Object? logo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: null == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as Logo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LogoCopyWith<$Res> get logo {
    return $LogoCopyWith<$Res>(_value.logo, (value) {
      return _then(_value.copyWith(logo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InstitutionCopyWith<$Res>
    implements $InstitutionCopyWith<$Res> {
  factory _$$_InstitutionCopyWith(
          _$_Institution value, $Res Function(_$_Institution) then) =
      __$$_InstitutionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String shortName, String country, Logo logo});

  @override
  $LogoCopyWith<$Res> get logo;
}

/// @nodoc
class __$$_InstitutionCopyWithImpl<$Res>
    extends _$InstitutionCopyWithImpl<$Res, _$_Institution>
    implements _$$_InstitutionCopyWith<$Res> {
  __$$_InstitutionCopyWithImpl(
      _$_Institution _value, $Res Function(_$_Institution) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shortName = null,
    Object? country = null,
    Object? logo = null,
  }) {
    return _then(_$_Institution(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: null == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as Logo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Institution implements _Institution {
  const _$_Institution(
      {required this.id,
      required this.name,
      required this.shortName,
      required this.country,
      required this.logo});

  factory _$_Institution.fromJson(Map<String, dynamic> json) =>
      _$$_InstitutionFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String shortName;
  @override
  final String country;
  @override
  final Logo logo;

  @override
  String toString() {
    return 'Institution(id: $id, name: $name, shortName: $shortName, country: $country, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Institution &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, shortName, country, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstitutionCopyWith<_$_Institution> get copyWith =>
      __$$_InstitutionCopyWithImpl<_$_Institution>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstitutionToJson(
      this,
    );
  }
}

abstract class _Institution implements Institution {
  const factory _Institution(
      {required final String id,
      required final String name,
      required final String shortName,
      required final String country,
      required final Logo logo}) = _$_Institution;

  factory _Institution.fromJson(Map<String, dynamic> json) =
      _$_Institution.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get shortName;
  @override
  String get country;
  @override
  Logo get logo;
  @override
  @JsonKey(ignore: true)
  _$$_InstitutionCopyWith<_$_Institution> get copyWith =>
      throw _privateConstructorUsedError;
}

Logo _$LogoFromJson(Map<String, dynamic> json) {
  return _Logo.fromJson(json);
}

/// @nodoc
mixin _$Logo {
  String get type => throw _privateConstructorUsedError;
  _Links get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogoCopyWith<Logo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoCopyWith<$Res> {
  factory $LogoCopyWith(Logo value, $Res Function(Logo) then) =
      _$LogoCopyWithImpl<$Res, Logo>;
  @useResult
  $Res call({String type, _Links links});

  _$LinksCopyWith<$Res> get links;
}

/// @nodoc
class _$LogoCopyWithImpl<$Res, $Val extends Logo>
    implements $LogoCopyWith<$Res> {
  _$LogoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? links = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as _Links,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  _$LinksCopyWith<$Res> get links {
    return _$LinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LogoCopyWith<$Res> implements $LogoCopyWith<$Res> {
  factory _$$_LogoCopyWith(_$_Logo value, $Res Function(_$_Logo) then) =
      __$$_LogoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, _Links links});

  @override
  _$LinksCopyWith<$Res> get links;
}

/// @nodoc
class __$$_LogoCopyWithImpl<$Res> extends _$LogoCopyWithImpl<$Res, _$_Logo>
    implements _$$_LogoCopyWith<$Res> {
  __$$_LogoCopyWithImpl(_$_Logo _value, $Res Function(_$_Logo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? links = null,
  }) {
    return _then(_$_Logo(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as _Links,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Logo implements _Logo {
  const _$_Logo({required this.type, required this.links});

  factory _$_Logo.fromJson(Map<String, dynamic> json) => _$$_LogoFromJson(json);

  @override
  final String type;
  @override
  final _Links links;

  @override
  String toString() {
    return 'Logo(type: $type, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Logo &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, links);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogoCopyWith<_$_Logo> get copyWith =>
      __$$_LogoCopyWithImpl<_$_Logo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogoToJson(
      this,
    );
  }
}

abstract class _Logo implements Logo {
  const factory _Logo(
      {required final String type, required final _Links links}) = _$_Logo;

  factory _Logo.fromJson(Map<String, dynamic> json) = _$_Logo.fromJson;

  @override
  String get type;
  @override
  _Links get links;
  @override
  @JsonKey(ignore: true)
  _$$_LogoCopyWith<_$_Logo> get copyWith => throw _privateConstructorUsedError;
}

_Links _$_LinksFromJson(Map<String, dynamic> json) {
  return __Links.fromJson(json);
}

/// @nodoc
mixin _$_Links {
  String get square => throw _privateConstructorUsedError;
  String get full => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LinksCopyWith<_Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LinksCopyWith<$Res> {
  factory _$LinksCopyWith(_Links value, $Res Function(_Links) then) =
      __$LinksCopyWithImpl<$Res, _Links>;
  @useResult
  $Res call({String square, String full});
}

/// @nodoc
class __$LinksCopyWithImpl<$Res, $Val extends _Links>
    implements _$LinksCopyWith<$Res> {
  __$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? square = null,
    Object? full = null,
  }) {
    return _then(_value.copyWith(
      square: null == square
          ? _value.square
          : square // ignore: cast_nullable_to_non_nullable
              as String,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__LinksCopyWith<$Res> implements _$LinksCopyWith<$Res> {
  factory _$$__LinksCopyWith(_$__Links value, $Res Function(_$__Links) then) =
      __$$__LinksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String square, String full});
}

/// @nodoc
class __$$__LinksCopyWithImpl<$Res>
    extends __$LinksCopyWithImpl<$Res, _$__Links>
    implements _$$__LinksCopyWith<$Res> {
  __$$__LinksCopyWithImpl(_$__Links _value, $Res Function(_$__Links) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? square = null,
    Object? full = null,
  }) {
    return _then(_$__Links(
      square: null == square
          ? _value.square
          : square // ignore: cast_nullable_to_non_nullable
              as String,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__Links implements __Links {
  const _$__Links({required this.square, required this.full});

  factory _$__Links.fromJson(Map<String, dynamic> json) =>
      _$$__LinksFromJson(json);

  @override
  final String square;
  @override
  final String full;

  @override
  String toString() {
    return '_Links(square: $square, full: $full)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__Links &&
            (identical(other.square, square) || other.square == square) &&
            (identical(other.full, full) || other.full == full));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, square, full);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__LinksCopyWith<_$__Links> get copyWith =>
      __$$__LinksCopyWithImpl<_$__Links>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__LinksToJson(
      this,
    );
  }
}

abstract class __Links implements _Links {
  const factory __Links(
      {required final String square, required final String full}) = _$__Links;

  factory __Links.fromJson(Map<String, dynamic> json) = _$__Links.fromJson;

  @override
  String get square;
  @override
  String get full;
  @override
  @JsonKey(ignore: true)
  _$$__LinksCopyWith<_$__Links> get copyWith =>
      throw _privateConstructorUsedError;
}
