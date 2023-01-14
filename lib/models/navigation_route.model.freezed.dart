// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_route.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationRoute {
  String get name => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get route => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationRouteCopyWith<NavigationRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationRouteCopyWith<$Res> {
  factory $NavigationRouteCopyWith(
          NavigationRoute value, $Res Function(NavigationRoute) then) =
      _$NavigationRouteCopyWithImpl<$Res, NavigationRoute>;
  @useResult
  $Res call({String name, String path, String route});
}

/// @nodoc
class _$NavigationRouteCopyWithImpl<$Res, $Val extends NavigationRoute>
    implements $NavigationRouteCopyWith<$Res> {
  _$NavigationRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
    Object? route = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NavigationRouteCopyWith<$Res>
    implements $NavigationRouteCopyWith<$Res> {
  factory _$$_NavigationRouteCopyWith(
          _$_NavigationRoute value, $Res Function(_$_NavigationRoute) then) =
      __$$_NavigationRouteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String path, String route});
}

/// @nodoc
class __$$_NavigationRouteCopyWithImpl<$Res>
    extends _$NavigationRouteCopyWithImpl<$Res, _$_NavigationRoute>
    implements _$$_NavigationRouteCopyWith<$Res> {
  __$$_NavigationRouteCopyWithImpl(
      _$_NavigationRoute _value, $Res Function(_$_NavigationRoute) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
    Object? route = null,
  }) {
    return _then(_$_NavigationRoute(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NavigationRoute implements _NavigationRoute {
  _$_NavigationRoute(
      {required this.name, required this.path, required this.route});

  @override
  final String name;
  @override
  final String path;
  @override
  final String route;

  @override
  String toString() {
    return 'NavigationRoute(name: $name, path: $path, route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigationRoute &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.route, route) || other.route == route));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, path, route);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NavigationRouteCopyWith<_$_NavigationRoute> get copyWith =>
      __$$_NavigationRouteCopyWithImpl<_$_NavigationRoute>(this, _$identity);
}

abstract class _NavigationRoute implements NavigationRoute {
  factory _NavigationRoute(
      {required final String name,
      required final String path,
      required final String route}) = _$_NavigationRoute;

  @override
  String get name;
  @override
  String get path;
  @override
  String get route;
  @override
  @JsonKey(ignore: true)
  _$$_NavigationRouteCopyWith<_$_NavigationRoute> get copyWith =>
      throw _privateConstructorUsedError;
}
