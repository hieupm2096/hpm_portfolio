// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'triple_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TripleState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(Exception error) failure,
    required TResult Function(T data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(T data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TripleState<T> value) $default, {
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Failure<T> value) failure,
    required TResult Function(_Success<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_TripleState<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Success<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TripleState<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Success<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripleStateCopyWith<T, $Res> {
  factory $TripleStateCopyWith(
          TripleState<T> value, $Res Function(TripleState<T>) then) =
      _$TripleStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$TripleStateCopyWithImpl<T, $Res>
    implements $TripleStateCopyWith<T, $Res> {
  _$TripleStateCopyWithImpl(this._value, this._then);

  final TripleState<T> _value;
  // ignore: unused_field
  final $Res Function(TripleState<T>) _then;
}

/// @nodoc
abstract class _$$_TripleStateCopyWith<T, $Res> {
  factory _$$_TripleStateCopyWith(
          _$_TripleState<T> value, $Res Function(_$_TripleState<T>) then) =
      __$$_TripleStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_TripleStateCopyWithImpl<T, $Res>
    extends _$TripleStateCopyWithImpl<T, $Res>
    implements _$$_TripleStateCopyWith<T, $Res> {
  __$$_TripleStateCopyWithImpl(
      _$_TripleState<T> _value, $Res Function(_$_TripleState<T>) _then)
      : super(_value, (v) => _then(v as _$_TripleState<T>));

  @override
  _$_TripleState<T> get _value => super._value as _$_TripleState<T>;
}

/// @nodoc

class _$_TripleState<T> implements _TripleState<T> {
  const _$_TripleState();

  @override
  String toString() {
    return 'TripleState<$T>()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TripleState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(Exception error) failure,
    required TResult Function(T data) success,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(T data)? success,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TripleState<T> value) $default, {
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Failure<T> value) failure,
    required TResult Function(_Success<T> value) success,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_TripleState<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Success<T> value)? success,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TripleState<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Success<T> value)? success,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TripleState<T> implements TripleState<T> {
  const factory _TripleState() = _$_TripleState<T>;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<T, $Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading<T> value, $Res Function(_$_Loading<T>) then) =
      __$$_LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<T, $Res>
    extends _$TripleStateCopyWithImpl<T, $Res>
    implements _$$_LoadingCopyWith<T, $Res> {
  __$$_LoadingCopyWithImpl(
      _$_Loading<T> _value, $Res Function(_$_Loading<T>) _then)
      : super(_value, (v) => _then(v as _$_Loading<T>));

  @override
  _$_Loading<T> get _value => super._value as _$_Loading<T>;
}

/// @nodoc

class _$_Loading<T> implements _Loading<T> {
  const _$_Loading();

  @override
  String toString() {
    return 'TripleState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(Exception error) failure,
    required TResult Function(T data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(T data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TripleState<T> value) $default, {
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Failure<T> value) failure,
    required TResult Function(_Success<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_TripleState<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Success<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TripleState<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Success<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements TripleState<T> {
  const factory _Loading() = _$_Loading<T>;
}

/// @nodoc
abstract class _$$_FailureCopyWith<T, $Res> {
  factory _$$_FailureCopyWith(
          _$_Failure<T> value, $Res Function(_$_Failure<T>) then) =
      __$$_FailureCopyWithImpl<T, $Res>;
  $Res call({Exception error});
}

/// @nodoc
class __$$_FailureCopyWithImpl<T, $Res>
    extends _$TripleStateCopyWithImpl<T, $Res>
    implements _$$_FailureCopyWith<T, $Res> {
  __$$_FailureCopyWithImpl(
      _$_Failure<T> _value, $Res Function(_$_Failure<T>) _then)
      : super(_value, (v) => _then(v as _$_Failure<T>));

  @override
  _$_Failure<T> get _value => super._value as _$_Failure<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Failure<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_Failure<T> implements _Failure<T> {
  const _$_Failure(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'TripleState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<T, _$_Failure<T>> get copyWith =>
      __$$_FailureCopyWithImpl<T, _$_Failure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(Exception error) failure,
    required TResult Function(T data) success,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(T data)? success,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TripleState<T> value) $default, {
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Failure<T> value) failure,
    required TResult Function(_Success<T> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_TripleState<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Success<T> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TripleState<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Success<T> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<T> implements TripleState<T> {
  const factory _Failure(final Exception error) = _$_Failure<T>;

  Exception get error;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<T, _$_Failure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<T, $Res> {
  factory _$$_SuccessCopyWith(
          _$_Success<T> value, $Res Function(_$_Success<T>) then) =
      __$$_SuccessCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<T, $Res>
    extends _$TripleStateCopyWithImpl<T, $Res>
    implements _$$_SuccessCopyWith<T, $Res> {
  __$$_SuccessCopyWithImpl(
      _$_Success<T> _value, $Res Function(_$_Success<T>) _then)
      : super(_value, (v) => _then(v as _$_Success<T>));

  @override
  _$_Success<T> get _value => super._value as _$_Success<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_Success<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Success<T> implements _Success<T> {
  const _$_Success(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'TripleState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<T, _$_Success<T>> get copyWith =>
      __$$_SuccessCopyWithImpl<T, _$_Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(Exception error) failure,
    required TResult Function(T data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(T data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TripleState<T> value) $default, {
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Failure<T> value) failure,
    required TResult Function(_Success<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_TripleState<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Success<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TripleState<T> value)? $default, {
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Success<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T> implements TripleState<T> {
  const factory _Success(final T data) = _$_Success<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<T, _$_Success<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
