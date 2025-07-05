import 'package:auto_route/auto_route.dart';
import 'package:nextone/app/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: PlaceholderRoute.page),
        AutoRoute(page: RoleSelectionRoute.page),
        AutoRoute(page: DashboardRoute.page),
        AutoRoute(page: ProfileSetupRoute.page),
        AutoRoute(page: UploadProfilePictureRoute.page),
        AutoRoute(page: LoadingSplashRoute.page, initial: true),
      ];

  @override
  List<AutoRouteGuard> get guards => [
        // add root guards here
      ];
}
