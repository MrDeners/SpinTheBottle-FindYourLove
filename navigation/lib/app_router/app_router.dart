import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:home_screen/home_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  modules: <Type>[
    AuthModule,
    HomeScreenModule,
  ],
  replaceInRouteName: 'Form,Screen,Route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: SplashRoute.page,
          path: '/',
        ),
        AutoRoute(
          page: SignInRoute.page,
          path: '/sign_in',
        ),
        AutoRoute(
          page: SignUpRoute.page,
          path: '/sign_up',
        ),
    AutoRoute(
      page: HomeRoute.page,
      path: '/home',
    ),
      ];
}
