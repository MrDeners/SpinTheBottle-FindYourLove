import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:home_screen/home_screen.dart';
import 'package:play_field_screen/play_field_screen.dart';
import 'package:profile_alert_dialog/profile_alert_dialog.dart';
import 'package:profile_screen/profile_screen.dart';
import 'package:setting_screen/setting_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  modules: <Type>[
    AuthModule,
    HomeScreenModule,
    PlayFieldScreenModule,
    ProfileScreenModule,
    ProfileAlertDialogModule,
    SettingScreenModule,
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
        AutoRoute(
          page: PlayFieldRoute.page,
          path: '/play_field',
        ),
        AutoRoute(
          page: ProfileRoute.page,
          path: '/profile',
        ),
        AutoRoute(
          page: ProfileAlertDialogRoute.page,
          path: '/profile_alert_dialog',
        ),
        AutoRoute(
          page: SettingRoute.page,
          path: '/setting',
        ),
      ];
}
