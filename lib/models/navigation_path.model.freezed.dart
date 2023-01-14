// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_path.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationPath {
  NavigationRoute get route => throw _privateConstructorUsedError;
  String? get tab => throw _privateConstructorUsedError;
  String? get subTab => throw _privateConstructorUsedError;
  Map<String, String> get queryParameters => throw _privateConstructorUsedError;
  String? get fragment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationPathCopyWith<NavigationPath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationPathCopyWith<$Res> {
  factory $NavigationPathCopyWith(
          NavigationPath value, $Res Function(NavigationPath) then) =
      _$NavigationPathCopyWithImpl<$Res, NavigationPath>;
  @useResult
  $Res call(
      {NavigationRoute route,
      String? tab,
      String? subTab,
      Map<String, String> queryParameters,
      String? fragment});

  $NavigationRouteCopyWith<$Res> get route;
}

/// @nodoc
class _$NavigationPathCopyWithImpl<$Res, $Val extends NavigationPath>
    implements $NavigationPathCopyWith<$Res> {
  _$NavigationPathCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? tab = freezed,
    Object? subTab = freezed,
    Object? queryParameters = null,
    Object? fragment = freezed,
  }) {
    return _then(_value.copyWith(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as NavigationRoute,
      tab: freezed == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as String?,
      subTab: freezed == subTab
          ? _value.subTab
          : subTab // ignore: cast_nullable_to_non_nullable
              as String?,
      queryParameters: null == queryParameters
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      fragment: freezed == fragment
          ? _value.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NavigationRouteCopyWith<$Res> get route {
    return $NavigationRouteCopyWith<$Res>(_value.route, (value) {
      return _then(_value.copyWith(route: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NavigationPathCopyWith<$Res>
    implements $NavigationPathCopyWith<$Res> {
  factory _$$_NavigationPathCopyWith(
          _$_NavigationPath value, $Res Function(_$_NavigationPath) then) =
      __$$_NavigationPathCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NavigationRoute route,
      String? tab,
      String? subTab,
      Map<String, String> queryParameters,
      String? fragment});

  @override
  $NavigationRouteCopyWith<$Res> get route;
}

/// @nodoc
class __$$_NavigationPathCopyWithImpl<$Res>
    extends _$NavigationPathCopyWithImpl<$Res, _$_NavigationPath>
    implements _$$_NavigationPathCopyWith<$Res> {
  __$$_NavigationPathCopyWithImpl(
      _$_NavigationPath _value, $Res Function(_$_NavigationPath) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? tab = freezed,
    Object? subTab = freezed,
    Object? queryParameters = null,
    Object? fragment = freezed,
  }) {
    return _then(_$_NavigationPath(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as NavigationRoute,
      tab: freezed == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as String?,
      subTab: freezed == subTab
          ? _value.subTab
          : subTab // ignore: cast_nullable_to_non_nullable
              as String?,
      queryParameters: null == queryParameters
          ? _value._queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      fragment: freezed == fragment
          ? _value.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NavigationPath extends _NavigationPath {
  _$_NavigationPath(
      {required this.route,
      this.tab,
      this.subTab,
      final Map<String, String> queryParameters = const <String, String>{},
      this.fragment})
      : _queryParameters = queryParameters,
        super._();

  @override
  final NavigationRoute route;
  @override
  final String? tab;
  @override
  final String? subTab;
  final Map<String, String> _queryParameters;
  @override
  @JsonKey()
  Map<String, String> get queryParameters {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_queryParameters);
  }

  @override
  final String? fragment;

  @override
  String toString() {
    return 'NavigationPath(route: $route, tab: $tab, subTab: $subTab, queryParameters: $queryParameters, fragment: $fragment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigationPath &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.tab, tab) || other.tab == tab) &&
            (identical(other.subTab, subTab) || other.subTab == subTab) &&
            const DeepCollectionEquality()
                .equals(other._queryParameters, _queryParameters) &&
            (identical(other.fragment, fragment) ||
                other.fragment == fragment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route, tab, subTab,
      const DeepCollectionEquality().hash(_queryParameters), fragment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NavigationPathCopyWith<_$_NavigationPath> get copyWith =>
      __$$_NavigationPathCopyWithImpl<_$_NavigationPath>(this, _$identity);
}

abstract class _NavigationPath extends NavigationPath {
  factory _NavigationPath(
      {required final NavigationRoute route,
      final String? tab,
      final String? subTab,
      final Map<String, String> queryParameters,
      final String? fragment}) = _$_NavigationPath;
  _NavigationPath._() : super._();

  @override
  NavigationRoute get route;
  @override
  String? get tab;
  @override
  String? get subTab;
  @override
  Map<String, String> get queryParameters;
  @override
  String? get fragment;
  @override
  @JsonKey(ignore: true)
  _$$_NavigationPathCopyWith<_$_NavigationPath> get copyWith =>
      throw _privateConstructorUsedError;
}
