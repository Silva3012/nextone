import 'package:auto_route/auto_route.dart';
import 'package:nextone/app/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes =>
      [AutoRoute(page: LoginRoute.page, initial: true)];

  @override
  List<AutoRouteGuard> get guards => [
        // add root guards here
      ];
}
