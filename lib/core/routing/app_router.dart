import 'package:auto_route/auto_route.dart';
import 'package:homyyy/features/chat/chats_wrapper.dart';

import 'app_router.gr.dart';

//init route config
@AutoRouterConfig(replaceInRouteName: '')
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
                        CustomRoute(page: SignInByEmailRoute.page, initial: true),
            CustomRoute(page: PhoneInputScreenRoute.page),
            CustomRoute(page: VerificationCodeScreenRoute.page),
          ],
        ),
        CustomRoute(
          page: SignUpScreenRoute.page,
        ),
        CustomRoute(page: MainScreenRoute.page, children: [
          CustomRoute(
            page: HomeScreenRoute.page,
            initial: true
          ),
         
           CustomRoute(
            page: ChatsWrapperRoute.page,
            children: [
               CustomRoute(
            page: ChatsScreenRoute.page,
            initial: true
          ),
 CustomRoute(
            page: SimpleChatScreenRoute.page,
          ),
            ]
          ),
          CustomRoute(
            page: ProfileScreenRoute.page,
          ),
          
        ]),
      ],
    ),
  ];
}
