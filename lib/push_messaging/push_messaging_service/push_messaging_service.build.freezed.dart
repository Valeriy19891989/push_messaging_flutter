// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'push_messaging_service.build.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PushMessagingServiceAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PushMessage message) onMessage,
    required TResult Function(PushMessage push) onTapToPushMessage,
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function(PushToken token) onChangingToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PushMessage message)? onMessage,
    TResult? Function(PushMessage push)? onTapToPushMessage,
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function(PushToken token)? onChangingToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PushMessage message)? onMessage,
    TResult Function(PushMessage push)? onTapToPushMessage,
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function(PushToken token)? onChangingToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PushMessagingServiceActionOnMessage value)
        onMessage,
    required TResult Function(
            PushMessagingServiceActionOnTapToPushMessage value)
        onTapToPushMessage,
    required TResult Function(PushMessagingServiceActionStarted value) started,
    required TResult Function(PushMessagingServiceActionStopped value) stopped,
    required TResult Function(PushMessagingServiceActionOnChangingToken value)
        onChangingToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PushMessagingServiceActionOnMessage value)? onMessage,
    TResult? Function(PushMessagingServiceActionOnTapToPushMessage value)?
        onTapToPushMessage,
    TResult? Function(PushMessagingServiceActionStarted value)? started,
    TResult? Function(PushMessagingServiceActionStopped value)? stopped,
    TResult? Function(PushMessagingServiceActionOnChangingToken value)?
        onChangingToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PushMessagingServiceActionOnMessage value)? onMessage,
    TResult Function(PushMessagingServiceActionOnTapToPushMessage value)?
        onTapToPushMessage,
    TResult Function(PushMessagingServiceActionStarted value)? started,
    TResult Function(PushMessagingServiceActionStopped value)? stopped,
    TResult Function(PushMessagingServiceActionOnChangingToken value)?
        onChangingToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushMessagingServiceActionCopyWith<$Res> {
  factory $PushMessagingServiceActionCopyWith(PushMessagingServiceAction value,
          $Res Function(PushMessagingServiceAction) then) =
      _$PushMessagingServiceActionCopyWithImpl<$Res,
          PushMessagingServiceAction>;
}

/// @nodoc
class _$PushMessagingServiceActionCopyWithImpl<$Res,
        $Val extends PushMessagingServiceAction>
    implements $PushMessagingServiceActionCopyWith<$Res> {
  _$PushMessagingServiceActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PushMessagingServiceActionOnMessageCopyWith<$Res> {
  factory _$$PushMessagingServiceActionOnMessageCopyWith(
          _$PushMessagingServiceActionOnMessage value,
          $Res Function(_$PushMessagingServiceActionOnMessage) then) =
      __$$PushMessagingServiceActionOnMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({PushMessage message});
}

/// @nodoc
class __$$PushMessagingServiceActionOnMessageCopyWithImpl<$Res>
    extends _$PushMessagingServiceActionCopyWithImpl<$Res,
        _$PushMessagingServiceActionOnMessage>
    implements _$$PushMessagingServiceActionOnMessageCopyWith<$Res> {
  __$$PushMessagingServiceActionOnMessageCopyWithImpl(
      _$PushMessagingServiceActionOnMessage _value,
      $Res Function(_$PushMessagingServiceActionOnMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PushMessagingServiceActionOnMessage(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as PushMessage,
    ));
  }
}

/// @nodoc

class _$PushMessagingServiceActionOnMessage
    with DiagnosticableTreeMixin
    implements PushMessagingServiceActionOnMessage {
  const _$PushMessagingServiceActionOnMessage({required this.message});

  @override
  final PushMessage message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PushMessagingServiceAction.onMessage(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PushMessagingServiceAction.onMessage'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushMessagingServiceActionOnMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PushMessagingServiceActionOnMessageCopyWith<
          _$PushMessagingServiceActionOnMessage>
      get copyWith => __$$PushMessagingServiceActionOnMessageCopyWithImpl<
          _$PushMessagingServiceActionOnMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PushMessage message) onMessage,
    required TResult Function(PushMessage push) onTapToPushMessage,
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function(PushToken token) onChangingToken,
  }) {
    return onMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PushMessage message)? onMessage,
    TResult? Function(PushMessage push)? onTapToPushMessage,
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function(PushToken token)? onChangingToken,
  }) {
    return onMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PushMessage message)? onMessage,
    TResult Function(PushMessage push)? onTapToPushMessage,
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function(PushToken token)? onChangingToken,
    required TResult orElse(),
  }) {
    if (onMessage != null) {
      return onMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PushMessagingServiceActionOnMessage value)
        onMessage,
    required TResult Function(
            PushMessagingServiceActionOnTapToPushMessage value)
        onTapToPushMessage,
    required TResult Function(PushMessagingServiceActionStarted value) started,
    required TResult Function(PushMessagingServiceActionStopped value) stopped,
    required TResult Function(PushMessagingServiceActionOnChangingToken value)
        onChangingToken,
  }) {
    return onMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PushMessagingServiceActionOnMessage value)? onMessage,
    TResult? Function(PushMessagingServiceActionOnTapToPushMessage value)?
        onTapToPushMessage,
    TResult? Function(PushMessagingServiceActionStarted value)? started,
    TResult? Function(PushMessagingServiceActionStopped value)? stopped,
    TResult? Function(PushMessagingServiceActionOnChangingToken value)?
        onChangingToken,
  }) {
    return onMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PushMessagingServiceActionOnMessage value)? onMessage,
    TResult Function(PushMessagingServiceActionOnTapToPushMessage value)?
        onTapToPushMessage,
    TResult Function(PushMessagingServiceActionStarted value)? started,
    TResult Function(PushMessagingServiceActionStopped value)? stopped,
    TResult Function(PushMessagingServiceActionOnChangingToken value)?
        onChangingToken,
    required TResult orElse(),
  }) {
    if (onMessage != null) {
      return onMessage(this);
    }
    return orElse();
  }
}

abstract class PushMessagingServiceActionOnMessage
    implements PushMessagingServiceAction {
  const factory PushMessagingServiceActionOnMessage(
          {required final PushMessage message}) =
      _$PushMessagingServiceActionOnMessage;

  PushMessage get message;
  @JsonKey(ignore: true)
  _$$PushMessagingServiceActionOnMessageCopyWith<
          _$PushMessagingServiceActionOnMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PushMessagingServiceActionOnTapToPushMessageCopyWith<$Res> {
  factory _$$PushMessagingServiceActionOnTapToPushMessageCopyWith(
          _$PushMessagingServiceActionOnTapToPushMessage value,
          $Res Function(_$PushMessagingServiceActionOnTapToPushMessage) then) =
      __$$PushMessagingServiceActionOnTapToPushMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({PushMessage push});
}

/// @nodoc
class __$$PushMessagingServiceActionOnTapToPushMessageCopyWithImpl<$Res>
    extends _$PushMessagingServiceActionCopyWithImpl<$Res,
        _$PushMessagingServiceActionOnTapToPushMessage>
    implements _$$PushMessagingServiceActionOnTapToPushMessageCopyWith<$Res> {
  __$$PushMessagingServiceActionOnTapToPushMessageCopyWithImpl(
      _$PushMessagingServiceActionOnTapToPushMessage _value,
      $Res Function(_$PushMessagingServiceActionOnTapToPushMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? push = null,
  }) {
    return _then(_$PushMessagingServiceActionOnTapToPushMessage(
      push: null == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as PushMessage,
    ));
  }
}

/// @nodoc

class _$PushMessagingServiceActionOnTapToPushMessage
    with DiagnosticableTreeMixin
    implements PushMessagingServiceActionOnTapToPushMessage {
  const _$PushMessagingServiceActionOnTapToPushMessage({required this.push});

  @override
  final PushMessage push;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PushMessagingServiceAction.onTapToPushMessage(push: $push)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PushMessagingServiceAction.onTapToPushMessage'))
      ..add(DiagnosticsProperty('push', push));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushMessagingServiceActionOnTapToPushMessage &&
            (identical(other.push, push) || other.push == push));
  }

  @override
  int get hashCode => Object.hash(runtimeType, push);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PushMessagingServiceActionOnTapToPushMessageCopyWith<
          _$PushMessagingServiceActionOnTapToPushMessage>
      get copyWith =>
          __$$PushMessagingServiceActionOnTapToPushMessageCopyWithImpl<
              _$PushMessagingServiceActionOnTapToPushMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PushMessage message) onMessage,
    required TResult Function(PushMessage push) onTapToPushMessage,
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function(PushToken token) onChangingToken,
  }) {
    return onTapToPushMessage(push);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PushMessage message)? onMessage,
    TResult? Function(PushMessage push)? onTapToPushMessage,
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function(PushToken token)? onChangingToken,
  }) {
    return onTapToPushMessage?.call(push);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PushMessage message)? onMessage,
    TResult Function(PushMessage push)? onTapToPushMessage,
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function(PushToken token)? onChangingToken,
    required TResult orElse(),
  }) {
    if (onTapToPushMessage != null) {
      return onTapToPushMessage(push);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PushMessagingServiceActionOnMessage value)
        onMessage,
    required TResult Function(
            PushMessagingServiceActionOnTapToPushMessage value)
        onTapToPushMessage,
    required TResult Function(PushMessagingServiceActionStarted value) started,
    required TResult Function(PushMessagingServiceActionStopped value) stopped,
    required TResult Function(PushMessagingServiceActionOnChangingToken value)
        onChangingToken,
  }) {
    return onTapToPushMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PushMessagingServiceActionOnMessage value)? onMessage,
    TResult? Function(PushMessagingServiceActionOnTapToPushMessage value)?
        onTapToPushMessage,
    TResult? Function(PushMessagingServiceActionStarted value)? started,
    TResult? Function(PushMessagingServiceActionStopped value)? stopped,
    TResult? Function(PushMessagingServiceActionOnChangingToken value)?
        onChangingToken,
  }) {
    return onTapToPushMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PushMessagingServiceActionOnMessage value)? onMessage,
    TResult Function(PushMessagingServiceActionOnTapToPushMessage value)?
        onTapToPushMessage,
    TResult Function(PushMessagingServiceActionStarted value)? started,
    TResult Function(PushMessagingServiceActionStopped value)? stopped,
    TResult Function(PushMessagingServiceActionOnChangingToken value)?
        onChangingToken,
    required TResult orElse(),
  }) {
    if (onTapToPushMessage != null) {
      return onTapToPushMessage(this);
    }
    return orElse();
  }
}

abstract class PushMessagingServiceActionOnTapToPushMessage
    implements PushMessagingServiceAction {
  const factory PushMessagingServiceActionOnTapToPushMessage(
          {required final PushMessage push}) =
      _$PushMessagingServiceActionOnTapToPushMessage;

  PushMessage get push;
  @JsonKey(ignore: true)
  _$$PushMessagingServiceActionOnTapToPushMessageCopyWith<
          _$PushMessagingServiceActionOnTapToPushMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PushMessagingServiceActionStartedCopyWith<$Res> {
  factory _$$PushMessagingServiceActionStartedCopyWith(
          _$PushMessagingServiceActionStarted value,
          $Res Function(_$PushMessagingServiceActionStarted) then) =
      __$$PushMessagingServiceActionStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PushMessagingServiceActionStartedCopyWithImpl<$Res>
    extends _$PushMessagingServiceActionCopyWithImpl<$Res,
        _$PushMessagingServiceActionStarted>
    implements _$$PushMessagingServiceActionStartedCopyWith<$Res> {
  __$$PushMessagingServiceActionStartedCopyWithImpl(
      _$PushMessagingServiceActionStarted _value,
      $Res Function(_$PushMessagingServiceActionStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PushMessagingServiceActionStarted
    with DiagnosticableTreeMixin
    implements PushMessagingServiceActionStarted {
  const _$PushMessagingServiceActionStarted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PushMessagingServiceAction.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PushMessagingServiceAction.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushMessagingServiceActionStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PushMessage message) onMessage,
    required TResult Function(PushMessage push) onTapToPushMessage,
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function(PushToken token) onChangingToken,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PushMessage message)? onMessage,
    TResult? Function(PushMessage push)? onTapToPushMessage,
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function(PushToken token)? onChangingToken,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PushMessage message)? onMessage,
    TResult Function(PushMessage push)? onTapToPushMessage,
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function(PushToken token)? onChangingToken,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PushMessagingServiceActionOnMessage value)
        onMessage,
    required TResult Function(
            PushMessagingServiceActionOnTapToPushMessage value)
        onTapToPushMessage,
    required TResult Function(PushMessagingServiceActionStarted value) started,
    required TResult Function(PushMessagingServiceActionStopped value) stopped,
    required TResult Function(PushMessagingServiceActionOnChangingToken value)
        onChangingToken,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PushMessagingServiceActionOnMessage value)? onMessage,
    TResult? Function(PushMessagingServiceActionOnTapToPushMessage value)?
        onTapToPushMessage,
    TResult? Function(PushMessagingServiceActionStarted value)? started,
    TResult? Function(PushMessagingServiceActionStopped value)? stopped,
    TResult? Function(PushMessagingServiceActionOnChangingToken value)?
        onChangingToken,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PushMessagingServiceActionOnMessage value)? onMessage,
    TResult Function(PushMessagingServiceActionOnTapToPushMessage value)?
        onTapToPushMessage,
    TResult Function(PushMessagingServiceActionStarted value)? started,
    TResult Function(PushMessagingServiceActionStopped value)? stopped,
    TResult Function(PushMessagingServiceActionOnChangingToken value)?
        onChangingToken,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class PushMessagingServiceActionStarted
    implements PushMessagingServiceAction {
  const factory PushMessagingServiceActionStarted() =
      _$PushMessagingServiceActionStarted;
}

/// @nodoc
abstract class _$$PushMessagingServiceActionStoppedCopyWith<$Res> {
  factory _$$PushMessagingServiceActionStoppedCopyWith(
          _$PushMessagingServiceActionStopped value,
          $Res Function(_$PushMessagingServiceActionStopped) then) =
      __$$PushMessagingServiceActionStoppedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PushMessagingServiceActionStoppedCopyWithImpl<$Res>
    extends _$PushMessagingServiceActionCopyWithImpl<$Res,
        _$PushMessagingServiceActionStopped>
    implements _$$PushMessagingServiceActionStoppedCopyWith<$Res> {
  __$$PushMessagingServiceActionStoppedCopyWithImpl(
      _$PushMessagingServiceActionStopped _value,
      $Res Function(_$PushMessagingServiceActionStopped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PushMessagingServiceActionStopped
    with DiagnosticableTreeMixin
    implements PushMessagingServiceActionStopped {
  const _$PushMessagingServiceActionStopped();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PushMessagingServiceAction.stopped()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PushMessagingServiceAction.stopped'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushMessagingServiceActionStopped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PushMessage message) onMessage,
    required TResult Function(PushMessage push) onTapToPushMessage,
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function(PushToken token) onChangingToken,
  }) {
    return stopped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PushMessage message)? onMessage,
    TResult? Function(PushMessage push)? onTapToPushMessage,
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function(PushToken token)? onChangingToken,
  }) {
    return stopped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PushMessage message)? onMessage,
    TResult Function(PushMessage push)? onTapToPushMessage,
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function(PushToken token)? onChangingToken,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PushMessagingServiceActionOnMessage value)
        onMessage,
    required TResult Function(
            PushMessagingServiceActionOnTapToPushMessage value)
        onTapToPushMessage,
    required TResult Function(PushMessagingServiceActionStarted value) started,
    required TResult Function(PushMessagingServiceActionStopped value) stopped,
    required TResult Function(PushMessagingServiceActionOnChangingToken value)
        onChangingToken,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PushMessagingServiceActionOnMessage value)? onMessage,
    TResult? Function(PushMessagingServiceActionOnTapToPushMessage value)?
        onTapToPushMessage,
    TResult? Function(PushMessagingServiceActionStarted value)? started,
    TResult? Function(PushMessagingServiceActionStopped value)? stopped,
    TResult? Function(PushMessagingServiceActionOnChangingToken value)?
        onChangingToken,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PushMessagingServiceActionOnMessage value)? onMessage,
    TResult Function(PushMessagingServiceActionOnTapToPushMessage value)?
        onTapToPushMessage,
    TResult Function(PushMessagingServiceActionStarted value)? started,
    TResult Function(PushMessagingServiceActionStopped value)? stopped,
    TResult Function(PushMessagingServiceActionOnChangingToken value)?
        onChangingToken,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class PushMessagingServiceActionStopped
    implements PushMessagingServiceAction {
  const factory PushMessagingServiceActionStopped() =
      _$PushMessagingServiceActionStopped;
}

/// @nodoc
abstract class _$$PushMessagingServiceActionOnChangingTokenCopyWith<$Res> {
  factory _$$PushMessagingServiceActionOnChangingTokenCopyWith(
          _$PushMessagingServiceActionOnChangingToken value,
          $Res Function(_$PushMessagingServiceActionOnChangingToken) then) =
      __$$PushMessagingServiceActionOnChangingTokenCopyWithImpl<$Res>;
  @useResult
  $Res call({PushToken token});
}

/// @nodoc
class __$$PushMessagingServiceActionOnChangingTokenCopyWithImpl<$Res>
    extends _$PushMessagingServiceActionCopyWithImpl<$Res,
        _$PushMessagingServiceActionOnChangingToken>
    implements _$$PushMessagingServiceActionOnChangingTokenCopyWith<$Res> {
  __$$PushMessagingServiceActionOnChangingTokenCopyWithImpl(
      _$PushMessagingServiceActionOnChangingToken _value,
      $Res Function(_$PushMessagingServiceActionOnChangingToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$PushMessagingServiceActionOnChangingToken(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as PushToken,
    ));
  }
}

/// @nodoc

class _$PushMessagingServiceActionOnChangingToken
    with DiagnosticableTreeMixin
    implements PushMessagingServiceActionOnChangingToken {
  const _$PushMessagingServiceActionOnChangingToken({required this.token});

  @override
  final PushToken token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PushMessagingServiceAction.onChangingToken(token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PushMessagingServiceAction.onChangingToken'))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushMessagingServiceActionOnChangingToken &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PushMessagingServiceActionOnChangingTokenCopyWith<
          _$PushMessagingServiceActionOnChangingToken>
      get copyWith => __$$PushMessagingServiceActionOnChangingTokenCopyWithImpl<
          _$PushMessagingServiceActionOnChangingToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PushMessage message) onMessage,
    required TResult Function(PushMessage push) onTapToPushMessage,
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function(PushToken token) onChangingToken,
  }) {
    return onChangingToken(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PushMessage message)? onMessage,
    TResult? Function(PushMessage push)? onTapToPushMessage,
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function(PushToken token)? onChangingToken,
  }) {
    return onChangingToken?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PushMessage message)? onMessage,
    TResult Function(PushMessage push)? onTapToPushMessage,
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function(PushToken token)? onChangingToken,
    required TResult orElse(),
  }) {
    if (onChangingToken != null) {
      return onChangingToken(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PushMessagingServiceActionOnMessage value)
        onMessage,
    required TResult Function(
            PushMessagingServiceActionOnTapToPushMessage value)
        onTapToPushMessage,
    required TResult Function(PushMessagingServiceActionStarted value) started,
    required TResult Function(PushMessagingServiceActionStopped value) stopped,
    required TResult Function(PushMessagingServiceActionOnChangingToken value)
        onChangingToken,
  }) {
    return onChangingToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PushMessagingServiceActionOnMessage value)? onMessage,
    TResult? Function(PushMessagingServiceActionOnTapToPushMessage value)?
        onTapToPushMessage,
    TResult? Function(PushMessagingServiceActionStarted value)? started,
    TResult? Function(PushMessagingServiceActionStopped value)? stopped,
    TResult? Function(PushMessagingServiceActionOnChangingToken value)?
        onChangingToken,
  }) {
    return onChangingToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PushMessagingServiceActionOnMessage value)? onMessage,
    TResult Function(PushMessagingServiceActionOnTapToPushMessage value)?
        onTapToPushMessage,
    TResult Function(PushMessagingServiceActionStarted value)? started,
    TResult Function(PushMessagingServiceActionStopped value)? stopped,
    TResult Function(PushMessagingServiceActionOnChangingToken value)?
        onChangingToken,
    required TResult orElse(),
  }) {
    if (onChangingToken != null) {
      return onChangingToken(this);
    }
    return orElse();
  }
}

abstract class PushMessagingServiceActionOnChangingToken
    implements PushMessagingServiceAction {
  const factory PushMessagingServiceActionOnChangingToken(
          {required final PushToken token}) =
      _$PushMessagingServiceActionOnChangingToken;

  PushToken get token;
  @JsonKey(ignore: true)
  _$$PushMessagingServiceActionOnChangingTokenCopyWith<
          _$PushMessagingServiceActionOnChangingToken>
      get copyWith => throw _privateConstructorUsedError;
}
