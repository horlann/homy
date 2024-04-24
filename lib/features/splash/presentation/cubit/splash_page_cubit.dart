import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_page_cubit.freezed.dart';

part 'splash_page_state.dart';

class SplashPageCubit extends Cubit<SplashPageState> {
  SplashPageCubit() : super(const SplashPageState.initial());

  ///Start app and make availabily checks here
  Future<void> initialize() async {
    try {
      final bool isAvailbale = true;
      if (isAvailbale) {
        await Future<void>.delayed(const Duration(milliseconds: 500))
            .then((value) => emit(const SplashPageState.enter()));
      } else {
        emit(const SplashPageState.interrupt());
      }
    } catch (e) {
      emit(const SplashPageState.interrupt());
    }
  }
}
