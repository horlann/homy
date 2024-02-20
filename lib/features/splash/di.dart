import 'package:homyyy/features/splash/presentation/cubit/splash_page_cubit.dart';
import 'package:homyyy/main/di.dart';

class SplashFeatureDependenciesResolver {
  static void resolve() {
    _domain();
    _presentation();
  }

  static void _domain() {}

  static void _presentation() {
    di.registerFactory<SplashPageCubit>(
      SplashPageCubit.new,
    );
  }
}
