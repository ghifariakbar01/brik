// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'defined_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DefinedError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, String? message) network,
    required TResult Function() others,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode, String? message)? network,
    TResult? Function()? others,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, String? message)? network,
    TResult Function()? others,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Network value) network,
    required TResult Function(_Others value) others,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Network value)? network,
    TResult? Function(_Others value)? others,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Network value)? network,
    TResult Function(_Others value)? others,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefinedErrorCopyWith<$Res> {
  factory $DefinedErrorCopyWith(
          DefinedError value, $Res Function(DefinedError) then) =
      _$DefinedErrorCopyWithImpl<$Res, DefinedError>;
}

/// @nodoc
class _$DefinedErrorCopyWithImpl<$Res, $Val extends DefinedError>
    implements $DefinedErrorCopyWith<$Res> {
  _$DefinedErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NetworkImplCopyWith<$Res> {
  factory _$$NetworkImplCopyWith(
          _$NetworkImpl value, $Res Function(_$NetworkImpl) then) =
      __$$NetworkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? statusCode, String? message});
}

/// @nodoc
class __$$NetworkImplCopyWithImpl<$Res>
    extends _$DefinedErrorCopyWithImpl<$Res, _$NetworkImpl>
    implements _$$NetworkImplCopyWith<$Res> {
  __$$NetworkImplCopyWithImpl(
      _$NetworkImpl _value, $Res Function(_$NetworkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$NetworkImpl(
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NetworkImpl implements _Network {
  _$NetworkImpl([this.statusCode, this.message]);

  @override
  final int? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'DefinedError.network(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkImplCopyWith<_$NetworkImpl> get copyWith =>
      __$$NetworkImplCopyWithImpl<_$NetworkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, String? message) network,
    required TResult Function() others,
  }) {
    return network(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode, String? message)? network,
    TResult? Function()? others,
  }) {
    return network?.call(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, String? message)? network,
    TResult Function()? others,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(statusCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Network value) network,
    required TResult Function(_Others value) others,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Network value)? network,
    TResult? Function(_Others value)? others,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Network value)? network,
    TResult Function(_Others value)? others,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _Network implements DefinedError {
  factory _Network([final int? statusCode, final String? message]) =
      _$NetworkImpl;

  int? get statusCode;
  String? get message;
  @JsonKey(ignore: true)
  _$$NetworkImplCopyWith<_$NetworkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OthersImplCopyWith<$Res> {
  factory _$$OthersImplCopyWith(
          _$OthersImpl value, $Res Function(_$OthersImpl) then) =
      __$$OthersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OthersImplCopyWithImpl<$Res>
    extends _$DefinedErrorCopyWithImpl<$Res, _$OthersImpl>
    implements _$$OthersImplCopyWith<$Res> {
  __$$OthersImplCopyWithImpl(
      _$OthersImpl _value, $Res Function(_$OthersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OthersImpl implements _Others {
  _$OthersImpl();

  @override
  String toString() {
    return 'DefinedError.others()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OthersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, String? message) network,
    required TResult Function() others,
  }) {
    return others();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode, String? message)? network,
    TResult? Function()? others,
  }) {
    return others?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, String? message)? network,
    TResult Function()? others,
    required TResult orElse(),
  }) {
    if (others != null) {
      return others();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Network value) network,
    required TResult Function(_Others value) others,
  }) {
    return others(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Network value)? network,
    TResult? Function(_Others value)? others,
  }) {
    return others?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Network value)? network,
    TResult Function(_Others value)? others,
    required TResult orElse(),
  }) {
    if (others != null) {
      return others(this);
    }
    return orElse();
  }
}

abstract class _Others implements DefinedError {
  factory _Others() = _$OthersImpl;
}
