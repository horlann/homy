library base_cubit;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import 'error_data.dart';

part 'base_bloc_provider.dart';
part 'bottom_sheet_provider.dart';
part 'error_message_provider.dart';

abstract class BaseCubit<T> extends Cubit<T>
    with BottomSheetProviderMixin, ErrorMessageStreamProviderMixin {
  BaseCubit(super.state);

  void _init({
    required StackRouter router,
    BottomSheetProvider? bottomSheetProvider,
  }) {
    _bottomSheetProvider = bottomSheetProvider;
    this.router = router;
  }

  late final StackRouter router;

  @override
  BottomSheetProvider? _bottomSheetProvider;

  @override
  Future<void> close() {
    disposeErrorStream();
    return super.close();
  }
}
