// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DefaultError {
  dynamic get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      dynamic error,
      StackTrace stackTrace,
      String message,
    )
    apiError,
    required TResult Function(dynamic error, StackTrace stackTrace)
    businessError,
    required TResult Function(dynamic error, StackTrace stackTrace)
    unknownError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic error, StackTrace stackTrace, String message)?
    apiError,
    TResult? Function(dynamic error, StackTrace stackTrace)? businessError,
    TResult? Function(dynamic error, StackTrace stackTrace)? unknownError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic error, StackTrace stackTrace, String message)?
    apiError,
    TResult Function(dynamic error, StackTrace stackTrace)? businessError,
    TResult Function(dynamic error, StackTrace stackTrace)? unknownError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
    required TResult Function(_UnknownError value) unknownError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiError value)? apiError,
    TResult? Function(_BusinessError value)? businessError,
    TResult? Function(_UnknownError value)? unknownError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of DefaultError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DefaultErrorCopyWith<DefaultError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultErrorCopyWith<$Res> {
  factory $DefaultErrorCopyWith(
    DefaultError value,
    $Res Function(DefaultError) then,
  ) = _$DefaultErrorCopyWithImpl<$Res, DefaultError>;
  @useResult
  $Res call({dynamic error, StackTrace stackTrace});
}

/// @nodoc
class _$DefaultErrorCopyWithImpl<$Res, $Val extends DefaultError>
    implements $DefaultErrorCopyWith<$Res> {
  _$DefaultErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DefaultError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = freezed, Object? stackTrace = null}) {
    return _then(
      _value.copyWith(
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            stackTrace:
                null == stackTrace
                    ? _value.stackTrace
                    : stackTrace // ignore: cast_nullable_to_non_nullable
                        as StackTrace,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiErrorImplCopyWith<$Res>
    implements $DefaultErrorCopyWith<$Res> {
  factory _$$ApiErrorImplCopyWith(
    _$ApiErrorImpl value,
    $Res Function(_$ApiErrorImpl) then,
  ) = __$$ApiErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic error, StackTrace stackTrace, String message});
}

/// @nodoc
class __$$ApiErrorImplCopyWithImpl<$Res>
    extends _$DefaultErrorCopyWithImpl<$Res, _$ApiErrorImpl>
    implements _$$ApiErrorImplCopyWith<$Res> {
  __$$ApiErrorImplCopyWithImpl(
    _$ApiErrorImpl _value,
    $Res Function(_$ApiErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DefaultError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = null,
    Object? message = null,
  }) {
    return _then(
      _$ApiErrorImpl(
        freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                as dynamic,
        null == stackTrace
            ? _value.stackTrace
            : stackTrace // ignore: cast_nullable_to_non_nullable
                as StackTrace,
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ApiErrorImpl implements _ApiError {
  const _$ApiErrorImpl(this.error, this.stackTrace, this.message);

  @override
  final dynamic error;
  @override
  final StackTrace stackTrace;
  @override
  final String message;

  @override
  String toString() {
    return 'DefaultError.apiError(error: $error, stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(error),
    stackTrace,
    message,
  );

  /// Create a copy of DefaultError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      __$$ApiErrorImplCopyWithImpl<_$ApiErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      dynamic error,
      StackTrace stackTrace,
      String message,
    )
    apiError,
    required TResult Function(dynamic error, StackTrace stackTrace)
    businessError,
    required TResult Function(dynamic error, StackTrace stackTrace)
    unknownError,
  }) {
    return apiError(error, stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic error, StackTrace stackTrace, String message)?
    apiError,
    TResult? Function(dynamic error, StackTrace stackTrace)? businessError,
    TResult? Function(dynamic error, StackTrace stackTrace)? unknownError,
  }) {
    return apiError?.call(error, stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic error, StackTrace stackTrace, String message)?
    apiError,
    TResult Function(dynamic error, StackTrace stackTrace)? businessError,
    TResult Function(dynamic error, StackTrace stackTrace)? unknownError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(error, stackTrace, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
    required TResult Function(_UnknownError value) unknownError,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiError value)? apiError,
    TResult? Function(_BusinessError value)? businessError,
    TResult? Function(_UnknownError value)? unknownError,
  }) {
    return apiError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class _ApiError implements DefaultError {
  const factory _ApiError(
    final dynamic error,
    final StackTrace stackTrace,
    final String message,
  ) = _$ApiErrorImpl;

  @override
  dynamic get error;
  @override
  StackTrace get stackTrace;
  String get message;

  /// Create a copy of DefaultError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BusinessErrorImplCopyWith<$Res>
    implements $DefaultErrorCopyWith<$Res> {
  factory _$$BusinessErrorImplCopyWith(
    _$BusinessErrorImpl value,
    $Res Function(_$BusinessErrorImpl) then,
  ) = __$$BusinessErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic error, StackTrace stackTrace});
}

/// @nodoc
class __$$BusinessErrorImplCopyWithImpl<$Res>
    extends _$DefaultErrorCopyWithImpl<$Res, _$BusinessErrorImpl>
    implements _$$BusinessErrorImplCopyWith<$Res> {
  __$$BusinessErrorImplCopyWithImpl(
    _$BusinessErrorImpl _value,
    $Res Function(_$BusinessErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DefaultError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = freezed, Object? stackTrace = null}) {
    return _then(
      _$BusinessErrorImpl(
        freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                as dynamic,
        null == stackTrace
            ? _value.stackTrace
            : stackTrace // ignore: cast_nullable_to_non_nullable
                as StackTrace,
      ),
    );
  }
}

/// @nodoc

class _$BusinessErrorImpl implements _BusinessError {
  const _$BusinessErrorImpl(this.error, this.stackTrace);

  @override
  final dynamic error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'DefaultError.businessError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(error),
    stackTrace,
  );

  /// Create a copy of DefaultError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessErrorImplCopyWith<_$BusinessErrorImpl> get copyWith =>
      __$$BusinessErrorImplCopyWithImpl<_$BusinessErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      dynamic error,
      StackTrace stackTrace,
      String message,
    )
    apiError,
    required TResult Function(dynamic error, StackTrace stackTrace)
    businessError,
    required TResult Function(dynamic error, StackTrace stackTrace)
    unknownError,
  }) {
    return businessError(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic error, StackTrace stackTrace, String message)?
    apiError,
    TResult? Function(dynamic error, StackTrace stackTrace)? businessError,
    TResult? Function(dynamic error, StackTrace stackTrace)? unknownError,
  }) {
    return businessError?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic error, StackTrace stackTrace, String message)?
    apiError,
    TResult Function(dynamic error, StackTrace stackTrace)? businessError,
    TResult Function(dynamic error, StackTrace stackTrace)? unknownError,
    required TResult orElse(),
  }) {
    if (businessError != null) {
      return businessError(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
    required TResult Function(_UnknownError value) unknownError,
  }) {
    return businessError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiError value)? apiError,
    TResult? Function(_BusinessError value)? businessError,
    TResult? Function(_UnknownError value)? unknownError,
  }) {
    return businessError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (businessError != null) {
      return businessError(this);
    }
    return orElse();
  }
}

abstract class _BusinessError implements DefaultError {
  const factory _BusinessError(
    final dynamic error,
    final StackTrace stackTrace,
  ) = _$BusinessErrorImpl;

  @override
  dynamic get error;
  @override
  StackTrace get stackTrace;

  /// Create a copy of DefaultError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessErrorImplCopyWith<_$BusinessErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownErrorImplCopyWith<$Res>
    implements $DefaultErrorCopyWith<$Res> {
  factory _$$UnknownErrorImplCopyWith(
    _$UnknownErrorImpl value,
    $Res Function(_$UnknownErrorImpl) then,
  ) = __$$UnknownErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic error, StackTrace stackTrace});
}

/// @nodoc
class __$$UnknownErrorImplCopyWithImpl<$Res>
    extends _$DefaultErrorCopyWithImpl<$Res, _$UnknownErrorImpl>
    implements _$$UnknownErrorImplCopyWith<$Res> {
  __$$UnknownErrorImplCopyWithImpl(
    _$UnknownErrorImpl _value,
    $Res Function(_$UnknownErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DefaultError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = freezed, Object? stackTrace = null}) {
    return _then(
      _$UnknownErrorImpl(
        freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                as dynamic,
        null == stackTrace
            ? _value.stackTrace
            : stackTrace // ignore: cast_nullable_to_non_nullable
                as StackTrace,
      ),
    );
  }
}

/// @nodoc

class _$UnknownErrorImpl implements _UnknownError {
  const _$UnknownErrorImpl(this.error, this.stackTrace);

  @override
  final dynamic error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'DefaultError.unknownError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(error),
    stackTrace,
  );

  /// Create a copy of DefaultError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownErrorImplCopyWith<_$UnknownErrorImpl> get copyWith =>
      __$$UnknownErrorImplCopyWithImpl<_$UnknownErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      dynamic error,
      StackTrace stackTrace,
      String message,
    )
    apiError,
    required TResult Function(dynamic error, StackTrace stackTrace)
    businessError,
    required TResult Function(dynamic error, StackTrace stackTrace)
    unknownError,
  }) {
    return unknownError(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic error, StackTrace stackTrace, String message)?
    apiError,
    TResult? Function(dynamic error, StackTrace stackTrace)? businessError,
    TResult? Function(dynamic error, StackTrace stackTrace)? unknownError,
  }) {
    return unknownError?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic error, StackTrace stackTrace, String message)?
    apiError,
    TResult Function(dynamic error, StackTrace stackTrace)? businessError,
    TResult Function(dynamic error, StackTrace stackTrace)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
    required TResult Function(_UnknownError value) unknownError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiError value)? apiError,
    TResult? Function(_BusinessError value)? businessError,
    TResult? Function(_UnknownError value)? unknownError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class _UnknownError implements DefaultError {
  const factory _UnknownError(
    final dynamic error,
    final StackTrace stackTrace,
  ) = _$UnknownErrorImpl;

  @override
  dynamic get error;
  @override
  StackTrace get stackTrace;

  /// Create a copy of DefaultError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownErrorImplCopyWith<_$UnknownErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
