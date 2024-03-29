import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homyyy/core/routing/app_router.gr.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        HomeScreenRoute(),
        ChatsWrapperRoute(),
        ProfileScreenRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) => _CustomBottomNavBar(
        tabsRouter,
      ),
    );
  }
}

class _CustomBottomNavBar extends StatefulWidget {
  const _CustomBottomNavBar(this.tabsRouter);
  final TabsRouter tabsRouter;

  @override
  State<_CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<_CustomBottomNavBar> {
  @override
  void initState() {
    super.initState();
    final tabsRouter = AutoTabsRouter.of(context);
    tabsRouter.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    return Container(
      height: 64 + MediaQuery.of(context).viewPadding.bottom / 2,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewPadding.bottom / 2,
        ),
        child: Row(
          children: [
            Expanded(
                flex: 10,
                child: _NavBarItem(
                  callback: () {
                    setState(() {
                      tabsRouter.setActiveIndex(0);
                    });
                  },
                text: 'Домашня',
                iconPath: Icons.home,
                  isSelected: tabsRouter.activeIndex == 0,
                )),
            Expanded(
              flex: 10,
              child: _NavBarItem(
                callback: () {
                  setState(() {
                    tabsRouter.setActiveIndex(1);
                  });
                },
                text: 'Чати',
                iconPath: Icons.message,
                isSelected: tabsRouter.activeIndex == 1,
              ),
            ),
            Expanded(
              flex: 10,
              child: _NavBarItem(
                callback: () {
                  setState(() {
                    tabsRouter.setActiveIndex(2);
                  });
                },
                text: 'Профіль',
                iconPath: Icons.verified_user,
                isSelected: tabsRouter.activeIndex == 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  const _NavBarItem({
    required this.callback,
    required this.iconPath,
    required this.isSelected,
    required this.text,
  });

  final VoidCallback callback;
  final IconData iconPath;
  final bool isSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      behavior: HitTestBehavior.translucent,
      child: SizedBox.expand(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Icon(
                      iconPath,
                      color: isSelected?Colors.green:Colors.black,
                    ),
                  ),
                ),
              ),
              Text(text)
            ],
          ),
        ),
      ),
    );
  }
}
