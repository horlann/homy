part of base_cubit;

abstract class BottomSheetProvider {
  Future<T?> showBottomSheet<T extends BaseBottomSheetResult>(
    BaseBottomSheetConfiguration configuration,
  );
}

mixin BottomSheetProviderMixin implements BottomSheetProvider {
  @override
  Future<T?> showBottomSheet<T extends BaseBottomSheetResult>(
    BaseBottomSheetConfiguration configuration,
  ) {
    final provider = _bottomSheetProvider;
    if (provider == null) {
      throw Exception('BottomSheetProvider is not initialized');
    }
    return provider.showBottomSheet(configuration);
  }

  BottomSheetProvider? get _bottomSheetProvider;
}

abstract class BaseBottomSheetConfiguration {}

abstract class BaseBottomSheetResult {}
