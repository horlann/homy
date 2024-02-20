part of base_cubit;

class BaseBlocProvider<T extends BaseCubit<S>, S> extends BlocProvider<T> {
  BaseBlocProvider({
    required this.create,
    required Widget super.child,
    super.lazy,
    super.key,
    this.bottomSheetProvider,
  }) : super(
          create: (context) {
            final bloc = create(context);
            bloc._init(
              bottomSheetProvider: bottomSheetProvider,
              router: context.router,
            );
            return bloc;
          },
        );

  final BottomSheetProvider? bottomSheetProvider;
  final T Function(BuildContext) create;

  @override
  Widget build(BuildContext context) {
    return super.buildWithChild(
      context,
      _BlocHandlers<T, S>(
        child: super.child,
      ),
    );
  }
}

class _BlocHandlers<T extends BaseCubit<S>, S> extends StatelessWidget {
  const _BlocHandlers({
    required this.child,
    super.key,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<T>();

    return Stack(
      children: [
        child ?? const SizedBox.shrink(),
        StreamBuilder<ErrorData?>(
          stream: bloc.errorStream,
          builder: (_, snapshot) {
            if (snapshot.hasData) {
              bloc.clearError();
              _handleError(context, snapshot.data);
            }

            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }

  void _handleError(BuildContext context, ErrorData? errorData) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _displayDefaultError(context, errorData);
    });
  }

  void _displayDefaultError(
    BuildContext context,
    ErrorData? errorData,
  ) {
    if (errorData == null) {
      return;
    }
    final bloc = context.read<T>();
    bloc.router.pushNativeRoute(DialogRoute(
        context: context,
        builder: (context) {
          return Center(
            child: Material(
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
              child: Container(
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(errorData.subTitle),
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
