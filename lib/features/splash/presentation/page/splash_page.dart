import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homyyy/core/routing/app_router.gr.dart';
import 'package:homyyy/features/splash/presentation/cubit/splash_page_cubit.dart';
import 'package:homyyy/main/di.dart';

@RoutePage(name: 'SplashRoute')
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashSplashScreenState();
}

class _SplashSplashScreenState extends State<SplashScreen> {
  static const double _size = 140;

  @override
  void initState() {
    super.initState();
   // FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashPageCubit>(
      create: (context) => di.get<SplashPageCubit>()..initialize(),
      child: Builder(
        builder: (context) {
          return BlocConsumer<SplashPageCubit, SplashPageState>(
            listener: (context, state) {
              state.mapOrNull(
                enter: (_) {
                  context.router.replace(
                    const GlobalWrapperRoute(),
                  );
                },
                interrupt: (_) => {
                  debugPrint('interrupt'),
                },
              );
            },
            builder: (BuildContext context, SplashPageState state) {
              return Scaffold(
                resizeToAvoidBottomInset: false,
                body: Stack(
                  children: [
                    Center(child: Text('Homyyy $state')),
                    const Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      top: _size + 42,
                      child: Center(
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            backgroundColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
