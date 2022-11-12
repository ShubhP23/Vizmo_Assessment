// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'checkin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckInModel _$CheckInModelFromJson(Map<String, dynamic> json) {
  return _CheckInModel.fromJson(json);
}

/// @nodoc
mixin _$CheckInModel {
  String get checkin => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get purpose => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get employeeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckInModelCopyWith<CheckInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInModelCopyWith<$Res> {
  factory $CheckInModelCopyWith(
          CheckInModel value, $Res Function(CheckInModel) then) =
      _$CheckInModelCopyWithImpl<$Res, CheckInModel>;
  @useResult
  $Res call(
      {String checkin,
      String location,
      String purpose,
      String id,
      String employeeId});
}

/// @nodoc
class _$CheckInModelCopyWithImpl<$Res, $Val extends CheckInModel>
    implements $CheckInModelCopyWith<$Res> {
  _$CheckInModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkin = null,
    Object? location = null,
    Object? purpose = null,
    Object? id = null,
    Object? employeeId = null,
  }) {
    return _then(_value.copyWith(
      checkin: null == checkin
          ? _value.checkin
          : checkin // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckInModelCopyWith<$Res>
    implements $CheckInModelCopyWith<$Res> {
  factory _$$_CheckInModelCopyWith(
          _$_CheckInModel value, $Res Function(_$_CheckInModel) then) =
      __$$_CheckInModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String checkin,
      String location,
      String purpose,
      String id,
      String employeeId});
}

/// @nodoc
class __$$_CheckInModelCopyWithImpl<$Res>
    extends _$CheckInModelCopyWithImpl<$Res, _$_CheckInModel>
    implements _$$_CheckInModelCopyWith<$Res> {
  __$$_CheckInModelCopyWithImpl(
      _$_CheckInModel _value, $Res Function(_$_CheckInModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkin = null,
    Object? location = null,
    Object? purpose = null,
    Object? id = null,
    Object? employeeId = null,
  }) {
    return _then(_$_CheckInModel(
      checkin: null == checkin
          ? _value.checkin
          : checkin // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckInModel implements _CheckInModel {
  const _$_CheckInModel(
      {required this.checkin,
      required this.location,
      required this.purpose,
      required this.id,
      required this.employeeId});

  factory _$_CheckInModel.fromJson(Map<String, dynamic> json) =>
      _$$_CheckInModelFromJson(json);

  @override
  final String checkin;
  @override
  final String location;
  @override
  final String purpose;
  @override
  final String id;
  @override
  final String employeeId;

  @override
  String toString() {
    return 'CheckInModel(checkin: $checkin, location: $location, purpose: $purpose, id: $id, employeeId: $employeeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckInModel &&
            (identical(other.checkin, checkin) || other.checkin == checkin) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, checkin, location, purpose, id, employeeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckInModelCopyWith<_$_CheckInModel> get copyWith =>
      __$$_CheckInModelCopyWithImpl<_$_CheckInModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckInModelToJson(
      this,
    );
  }
}

abstract class _CheckInModel implements CheckInModel {
  const factory _CheckInModel(
      {required final String checkin,
      required final String location,
      required final String purpose,
      required final String id,
      required final String employeeId}) = _$_CheckInModel;

  factory _CheckInModel.fromJson(Map<String, dynamic> json) =
      _$_CheckInModel.fromJson;

  @override
  String get checkin;
  @override
  String get location;
  @override
  String get purpose;
  @override
  String get id;
  @override
  String get employeeId;
  @override
  @JsonKey(ignore: true)
  _$$_CheckInModelCopyWith<_$_CheckInModel> get copyWith =>
      throw _privateConstructorUsedError;
}
