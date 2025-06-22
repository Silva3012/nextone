// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:nextone/presentation/dashboard/dashboard_page.dart' as _i1;
import 'package:nextone/presentation/login/login_page.dart' as _i2;
import 'package:nextone/presentation/placeholder/placeholder.dart' as _i3;
import 'package:nextone/presentation/sign_up/role_selection/role_selection_page.dart'
    as _i4;
import 'package:nextone/presentation/sign_up/sign_up_page.dart' as _i5;

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute({List<_i6.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.DashboardPage();
    },
  );
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginPage();
    },
  );
}

/// generated route for
/// [_i3.PlaceholderPage]
class PlaceholderRoute extends _i6.PageRouteInfo<void> {
  const PlaceholderRoute({List<_i6.PageRouteInfo>? children})
      : super(
          PlaceholderRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlaceholderRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.PlaceholderPage();
    },
  );
}

/// generated route for
/// [_i4.RoleSelectionPage]
class RoleSelectionRoute extends _i6.PageRouteInfo<RoleSelectionRouteArgs> {
  RoleSelectionRoute({
    _i7.Key? key,
    required String email,
    required String uid,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          RoleSelectionRoute.name,
          args: RoleSelectionRouteArgs(
            key: key,
            email: email,
            uid: uid,
          ),
          initialChildren: children,
        );

  static const String name = 'RoleSelectionRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RoleSelectionRouteArgs>();
      return _i4.RoleSelectionPage(
        key: args.key,
        email: args.email,
        uid: args.uid,
      );
    },
  );
}

class RoleSelectionRouteArgs {
  const RoleSelectionRouteArgs({
    this.key,
    required this.email,
    required this.uid,
  });

  final _i7.Key? key;

  final String email;

  final String uid;

  @override
  String toString() {
    return 'RoleSelectionRouteArgs{key: $key, email: $email, uid: $uid}';
  }
}

/// generated route for
/// [_i5.SignUpPage]
class SignUpRoute extends _i6.PageRouteInfo<void> {
  const SignUpRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SignUpPage();
    },
  );
}
