import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homyyy/features/osbb/data/models/osbb_model.dart';
import 'package:homyyy/features/osbb/data/osbb_repository.dart';

import 'package:shared/base_cubit/base_cubit.dart';

part 'osbb_cubit.freezed.dart';

part 'osbb_state.dart';

class OsbbCubit extends BaseCubit<OsbbState> {
  OsbbCubit(this._osbbRepository) : super(const OsbbState.initial());
  final OSBBRepository _osbbRepository;

  ///Fetch data about the OSBB
  Future<void> init(String input) async {
    try {
      emit(OsbbState.loading());
      final osbb = await _osbbRepository.getOSBB('1');
      emit(OsbbState.idle(osbb: osbb));
    } catch (e, s) {
      print(e);
      print(s);
      emit(OsbbState.error('error'));
    }
  }
}
