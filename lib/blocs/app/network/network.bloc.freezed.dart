// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onConnected,
    required TResult Function() onDisconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onConnected,
    TResult? Function()? onDisconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onConnected,
    TResult Function()? onDisconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnConnected value) onConnected,
    required TResult Function(_OnDisconnected value) onDisconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnConnected value)? onConnected,
    TResult? Function(_OnDisconnected value)? onDisconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnConnected value)? onConnected,
    TResult Function(_OnDisconnected value)? onDisconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkEventCopyWith<$Res> {
  factory $NetworkEventCopyWith(
          NetworkEvent value, $Res Function(NetworkEvent) then) =
      _$NetworkEventCopyWithImpl<$Res, NetworkEvent>;
}

/// @nodoc
class _$NetworkEventCopyWithImpl<$Res, $Val extends NetworkEvent>
    implements $NetworkEventCopyWith<$Res> {
  _$NetworkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OnConnectedCopyWith<$Res> {
  factory _$$_OnConnectedCopyWith(
          _$_OnConnected value, $Res Function(_$_OnConnected) then) =
      __$$_OnConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnConnectedCopyWithImpl<$Res>
    extends _$NetworkEventCopyWithImpl<$Res, _$_OnConnected>
    implements _$$_OnConnectedCopyWith<$Res> {
  __$$_OnConnectedCopyWithImpl(
      _$_OnConnected _value, $Res Function(_$_OnConnected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnConnected implements _OnConnected {
  const _$_OnConnected();

  @override
  String toString() {
    return 'NetworkEvent.onConnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnConnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onConnected,
    required TResult Function() onDisconnected,
  }) {
    return onConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onConnected,
    TResult? Function()? onDisconnected,
  }) {
    return onConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onConnected,
    TResult Function()? onDisconnected,
    required TResult orElse(),
  }) {
    if (onConnected != null) {
      return onConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnConnected value) onConnected,
    required TResult Function(_OnDisconnected value) onDisconnected,
  }) {
    return onConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnConnected value)? onConnected,
    TResult? Function(_OnDisconnected value)? onDisconnected,
  }) {
    return onConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnConnected value)? onConnected,
    TResult Function(_OnDisconnected value)? onDisconnected,
    required TResult orElse(),
  }) {
    if (onConnected != null) {
      return onConnected(this);
    }
    return orElse();
  }
}

abstract class _OnConnected implements NetworkEvent {
  const factory _OnConnected() = _$_OnConnected;
}

/// @nodoc
abstract class _$$_OnDisconnectedCopyWith<$Res> {
  factory _$$_OnDisconnectedCopyWith(
          _$_OnDisconnected value, $Res Function(_$_OnDisconnected) then) =
      __$$_OnDisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnDisconnectedCopyWithImpl<$Res>
    extends _$NetworkEventCopyWithImpl<$Res, _$_OnDisconnected>
    implements _$$_OnDisconnectedCopyWith<$Res> {
  __$$_OnDisconnectedCopyWithImpl(
      _$_OnDisconnected _value, $Res Function(_$_OnDisconnected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnDisconnected implements _OnDisconnected {
  const _$_OnDisconnected();

  @override
  String toString() {
    return 'NetworkEvent.onDisconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnDisconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onConnected,
    required TResult Function() onDisconnected,
  }) {
    return onDisconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onConnected,
    TResult? Function()? onDisconnected,
  }) {
    return onDisconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onConnected,
    TResult Function()? onDisconnected,
    required TResult orElse(),
  }) {
    if (onDisconnected != null) {
      return onDisconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnConnected value) onConnected,
    required TResult Function(_OnDisconnected value) onDisconnected,
  }) {
    return onDisconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnConnected value)? onConnected,
    TResult? Function(_OnDisconnected value)? onDisconnected,
  }) {
    return onDisconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnConnected value)? onConnected,
    TResult Function(_OnDisconnected value)? onDisconnected,
    required TResult orElse(),
  }) {
    if (onDisconnected != null) {
      return onDisconnected(this);
    }
    return orElse();
  }
}

abstract class _OnDisconnected implements NetworkEvent {
  const factory _OnDisconnected() = _$_OnDisconnected;
}

/// @nodoc
mixin _$NetworkState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isInitial,
    required TResult Function() isConnected,
    required TResult Function() isDisconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isInitial,
    TResult? Function()? isConnected,
    TResult? Function()? isDisconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isInitial,
    TResult Function()? isConnected,
    TResult Function()? isDisconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsInitial value) isInitial,
    required TResult Function(_IsConnected value) isConnected,
    required TResult Function(_IsDisconnected value) isDisconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsInitial value)? isInitial,
    TResult? Function(_IsConnected value)? isConnected,
    TResult? Function(_IsDisconnected value)? isDisconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsInitial value)? isInitial,
    TResult Function(_IsConnected value)? isConnected,
    TResult Function(_IsDisconnected value)? isDisconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkStateCopyWith<$Res> {
  factory $NetworkStateCopyWith(
          NetworkState value, $Res Function(NetworkState) then) =
      _$NetworkStateCopyWithImpl<$Res, NetworkState>;
}

/// @nodoc
class _$NetworkStateCopyWithImpl<$Res, $Val extends NetworkState>
    implements $NetworkStateCopyWith<$Res> {
  _$NetworkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_IsInitialCopyWith<$Res> {
  factory _$$_IsInitialCopyWith(
          _$_IsInitial value, $Res Function(_$_IsInitial) then) =
      __$$_IsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsInitialCopyWithImpl<$Res>
    extends _$NetworkStateCopyWithImpl<$Res, _$_IsInitial>
    implements _$$_IsInitialCopyWith<$Res> {
  __$$_IsInitialCopyWithImpl(
      _$_IsInitial _value, $Res Function(_$_IsInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsInitial implements _IsInitial {
  const _$_IsInitial();

  @override
  String toString() {
    return 'NetworkState.isInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isInitial,
    required TResult Function() isConnected,
    required TResult Function() isDisconnected,
  }) {
    return isInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isInitial,
    TResult? Function()? isConnected,
    TResult? Function()? isDisconnected,
  }) {
    return isInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isInitial,
    TResult Function()? isConnected,
    TResult Function()? isDisconnected,
    required TResult orElse(),
  }) {
    if (isInitial != null) {
      return isInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsInitial value) isInitial,
    required TResult Function(_IsConnected value) isConnected,
    required TResult Function(_IsDisconnected value) isDisconnected,
  }) {
    return isInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsInitial value)? isInitial,
    TResult? Function(_IsConnected value)? isConnected,
    TResult? Function(_IsDisconnected value)? isDisconnected,
  }) {
    return isInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsInitial value)? isInitial,
    TResult Function(_IsConnected value)? isConnected,
    TResult Function(_IsDisconnected value)? isDisconnected,
    required TResult orElse(),
  }) {
    if (isInitial != null) {
      return isInitial(this);
    }
    return orElse();
  }
}

abstract class _IsInitial implements NetworkState {
  const factory _IsInitial() = _$_IsInitial;
}

/// @nodoc
abstract class _$$_IsConnectedCopyWith<$Res> {
  factory _$$_IsConnectedCopyWith(
          _$_IsConnected value, $Res Function(_$_IsConnected) then) =
      __$$_IsConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsConnectedCopyWithImpl<$Res>
    extends _$NetworkStateCopyWithImpl<$Res, _$_IsConnected>
    implements _$$_IsConnectedCopyWith<$Res> {
  __$$_IsConnectedCopyWithImpl(
      _$_IsConnected _value, $Res Function(_$_IsConnected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsConnected implements _IsConnected {
  const _$_IsConnected();

  @override
  String toString() {
    return 'NetworkState.isConnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IsConnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isInitial,
    required TResult Function() isConnected,
    required TResult Function() isDisconnected,
  }) {
    return isConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isInitial,
    TResult? Function()? isConnected,
    TResult? Function()? isDisconnected,
  }) {
    return isConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isInitial,
    TResult Function()? isConnected,
    TResult Function()? isDisconnected,
    required TResult orElse(),
  }) {
    if (isConnected != null) {
      return isConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsInitial value) isInitial,
    required TResult Function(_IsConnected value) isConnected,
    required TResult Function(_IsDisconnected value) isDisconnected,
  }) {
    return isConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsInitial value)? isInitial,
    TResult? Function(_IsConnected value)? isConnected,
    TResult? Function(_IsDisconnected value)? isDisconnected,
  }) {
    return isConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsInitial value)? isInitial,
    TResult Function(_IsConnected value)? isConnected,
    TResult Function(_IsDisconnected value)? isDisconnected,
    required TResult orElse(),
  }) {
    if (isConnected != null) {
      return isConnected(this);
    }
    return orElse();
  }
}

abstract class _IsConnected implements NetworkState {
  const factory _IsConnected() = _$_IsConnected;
}

/// @nodoc
abstract class _$$_IsDisconnectedCopyWith<$Res> {
  factory _$$_IsDisconnectedCopyWith(
          _$_IsDisconnected value, $Res Function(_$_IsDisconnected) then) =
      __$$_IsDisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsDisconnectedCopyWithImpl<$Res>
    extends _$NetworkStateCopyWithImpl<$Res, _$_IsDisconnected>
    implements _$$_IsDisconnectedCopyWith<$Res> {
  __$$_IsDisconnectedCopyWithImpl(
      _$_IsDisconnected _value, $Res Function(_$_IsDisconnected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsDisconnected implements _IsDisconnected {
  const _$_IsDisconnected();

  @override
  String toString() {
    return 'NetworkState.isDisconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IsDisconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isInitial,
    required TResult Function() isConnected,
    required TResult Function() isDisconnected,
  }) {
    return isDisconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isInitial,
    TResult? Function()? isConnected,
    TResult? Function()? isDisconnected,
  }) {
    return isDisconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isInitial,
    TResult Function()? isConnected,
    TResult Function()? isDisconnected,
    required TResult orElse(),
  }) {
    if (isDisconnected != null) {
      return isDisconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsInitial value) isInitial,
    required TResult Function(_IsConnected value) isConnected,
    required TResult Function(_IsDisconnected value) isDisconnected,
  }) {
    return isDisconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsInitial value)? isInitial,
    TResult? Function(_IsConnected value)? isConnected,
    TResult? Function(_IsDisconnected value)? isDisconnected,
  }) {
    return isDisconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsInitial value)? isInitial,
    TResult Function(_IsConnected value)? isConnected,
    TResult Function(_IsDisconnected value)? isDisconnected,
    required TResult orElse(),
  }) {
    if (isDisconnected != null) {
      return isDisconnected(this);
    }
    return orElse();
  }
}

abstract class _IsDisconnected implements NetworkState {
  const factory _IsDisconnected() = _$_IsDisconnected;
}
