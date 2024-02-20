import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

//init route config
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      initial: true,
      path: '/',
      page: SplashRoute.page,
    ),
    CustomRoute(
      path: '/app',
      page: GlobalWrapperRoute.page,
      children: [
        CustomRoute(
          page: AuthUpScreenWrapper.page,
          children: [
            CustomRoute(page: PhoneInputScreenRoute.page, initial: true),
            CustomRoute(page: VerificationCodeScreenRoute.page),
          ],
        ),
        CustomRoute(
          page: SignUpScreenRoute.page,
        ),
      //  CustomRoute(page: ChatScreenWrapperRoute.page),
      ],
    ),
  ];
}
