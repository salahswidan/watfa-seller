// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_buyer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpBuyerState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpBuyerLoading<T> value) loading,
    required TResult Function(SignUpBuyerSuccess<T> value) success,
    required TResult Function(SignUpBuyerError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpBuyerLoading<T> value)? loading,
    TResult? Function(SignUpBuyerSuccess<T> value)? success,
    TResult? Function(SignUpBuyerError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpBuyerLoading<T> value)? loading,
    TResult Function(SignUpBuyerSuccess<T> value)? success,
    TResult Function(SignUpBuyerError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpBuyerStateCopyWith<T, $Res> {
  factory $SignUpBuyerStateCopyWith(
          SignUpBuyerState<T> value, $Res Function(SignUpBuyerState<T>) then) =
      _$SignUpBuyerStateCopyWithImpl<T, $Res, SignUpBuyerState<T>>;
}

/// @nodoc
class _$SignUpBuyerStateCopyWithImpl<T, $Res, $Val extends SignUpBuyerState<T>>
    implements $SignUpBuyerStateCopyWith<T, $Res> {
  _$SignUpBuyerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpBuyerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$SignUpBuyerStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignUpBuyerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignUpBuyerState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpBuyerLoading<T> value) loading,
    required TResult Function(SignUpBuyerSuccess<T> value) success,
    required TResult Function(SignUpBuyerError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpBuyerLoading<T> value)? loading,
    TResult? Function(SignUpBuyerSuccess<T> value)? success,
    TResult? Function(SignUpBuyerError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpBuyerLoading<T> value)? loading,
    TResult Function(SignUpBuyerSuccess<T> value)? success,
    TResult Function(SignUpBuyerError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SignUpBuyerState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$SignUpBuyerLoadingImplCopyWith<T, $Res> {
  factory _$$SignUpBuyerLoadingImplCopyWith(_$SignUpBuyerLoadingImpl<T> value,
          $Res Function(_$SignUpBuyerLoadingImpl<T>) then) =
      __$$SignUpBuyerLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SignUpBuyerLoadingImplCopyWithImpl<T, $Res>
    extends _$SignUpBuyerStateCopyWithImpl<T, $Res, _$SignUpBuyerLoadingImpl<T>>
    implements _$$SignUpBuyerLoadingImplCopyWith<T, $Res> {
  __$$SignUpBuyerLoadingImplCopyWithImpl(_$SignUpBuyerLoadingImpl<T> _value,
      $Res Function(_$SignUpBuyerLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignUpBuyerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpBuyerLoadingImpl<T> implements SignUpBuyerLoading<T> {
  const _$SignUpBuyerLoadingImpl();

  @override
  String toString() {
    return 'SignUpBuyerState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpBuyerLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpBuyerLoading<T> value) loading,
    required TResult Function(SignUpBuyerSuccess<T> value) success,
    required TResult Function(SignUpBuyerError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpBuyerLoading<T> value)? loading,
    TResult? Function(SignUpBuyerSuccess<T> value)? success,
    TResult? Function(SignUpBuyerError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpBuyerLoading<T> value)? loading,
    TResult Function(SignUpBuyerSuccess<T> value)? success,
    TResult Function(SignUpBuyerError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignUpBuyerLoading<T> implements SignUpBuyerState<T> {
  const factory SignUpBuyerLoading() = _$SignUpBuyerLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SignUpBuyerSuccessImplCopyWith<T, $Res> {
  factory _$$SignUpBuyerSuccessImplCopyWith(_$SignUpBuyerSuccessImpl<T> value,
          $Res Function(_$SignUpBuyerSuccessImpl<T>) then) =
      __$$SignUpBuyerSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SignUpBuyerSuccessImplCopyWithImpl<T, $Res>
    extends _$SignUpBuyerStateCopyWithImpl<T, $Res, _$SignUpBuyerSuccessImpl<T>>
    implements _$$SignUpBuyerSuccessImplCopyWith<T, $Res> {
  __$$SignUpBuyerSuccessImplCopyWithImpl(_$SignUpBuyerSuccessImpl<T> _value,
      $Res Function(_$SignUpBuyerSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignUpBuyerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SignUpBuyerSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SignUpBuyerSuccessImpl<T> implements SignUpBuyerSuccess<T> {
  const _$SignUpBuyerSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SignUpBuyerState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpBuyerSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of SignUpBuyerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpBuyerSuccessImplCopyWith<T, _$SignUpBuyerSuccessImpl<T>>
      get copyWith => __$$SignUpBuyerSuccessImplCopyWithImpl<T,
          _$SignUpBuyerSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpBuyerLoading<T> value) loading,
    required TResult Function(SignUpBuyerSuccess<T> value) success,
    required TResult Function(SignUpBuyerError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpBuyerLoading<T> value)? loading,
    TResult? Function(SignUpBuyerSuccess<T> value)? success,
    TResult? Function(SignUpBuyerError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpBuyerLoading<T> value)? loading,
    TResult Function(SignUpBuyerSuccess<T> value)? success,
    TResult Function(SignUpBuyerError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SignUpBuyerSuccess<T> implements SignUpBuyerState<T> {
  const factory SignUpBuyerSuccess(final T data) = _$SignUpBuyerSuccessImpl<T>;

  T get data;

  /// Create a copy of SignUpBuyerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpBuyerSuccessImplCopyWith<T, _$SignUpBuyerSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpBuyerErrorImplCopyWith<T, $Res> {
  factory _$$SignUpBuyerErrorImplCopyWith(_$SignUpBuyerErrorImpl<T> value,
          $Res Function(_$SignUpBuyerErrorImpl<T>) then) =
      __$$SignUpBuyerErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$SignUpBuyerErrorImplCopyWithImpl<T, $Res>
    extends _$SignUpBuyerStateCopyWithImpl<T, $Res, _$SignUpBuyerErrorImpl<T>>
    implements _$$SignUpBuyerErrorImplCopyWith<T, $Res> {
  __$$SignUpBuyerErrorImplCopyWithImpl(_$SignUpBuyerErrorImpl<T> _value,
      $Res Function(_$SignUpBuyerErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignUpBuyerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$SignUpBuyerErrorImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$SignUpBuyerErrorImpl<T> implements SignUpBuyerError<T> {
  const _$SignUpBuyerErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'SignUpBuyerState<$T>.error(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpBuyerErrorImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of SignUpBuyerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpBuyerErrorImplCopyWith<T, _$SignUpBuyerErrorImpl<T>> get copyWith =>
      __$$SignUpBuyerErrorImplCopyWithImpl<T, _$SignUpBuyerErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return error(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return error?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpBuyerLoading<T> value) loading,
    required TResult Function(SignUpBuyerSuccess<T> value) success,
    required TResult Function(SignUpBuyerError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpBuyerLoading<T> value)? loading,
    TResult? Function(SignUpBuyerSuccess<T> value)? success,
    TResult? Function(SignUpBuyerError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpBuyerLoading<T> value)? loading,
    TResult Function(SignUpBuyerSuccess<T> value)? success,
    TResult Function(SignUpBuyerError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignUpBuyerError<T> implements SignUpBuyerState<T> {
  const factory SignUpBuyerError(final ApiErrorModel apiErrorModel) =
      _$SignUpBuyerErrorImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of SignUpBuyerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpBuyerErrorImplCopyWith<T, _$SignUpBuyerErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
