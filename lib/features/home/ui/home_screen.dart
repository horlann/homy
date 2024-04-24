import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homyyy/features/home/ui/widgets/home_sections_widget.dart';
import 'package:homyyy/features/home/ui/widgets/home_title_widget.dart';
import 'package:homyyy/features/osbb/cubit/osbb_cubit.dart';
import 'package:homyyy/main/di.dart';
import 'package:shared/base_cubit/base_cubit.dart';

@RoutePage()
class HomeWrapper extends StatelessWidget {
  const HomeWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseBlocProvider<OsbbCubit, OsbbState>(
      create: (context) => di.get<OsbbCubit>()..init('1'),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Обʼєднання',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<OsbbCubit, OsbbState>(
              builder: (BuildContext context, OsbbState state) {
                return state.maybeMap(
                    orElse: () => Center(child: Text('error')),
                    idle: (idleState) => Column(children: [
                          HomePageWidget(
                            osbbModel: idleState.osbb,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          HomePageSectionsWidget(
                            osbbModel: idleState.osbb,
                          )
                        ]),
                    loading: (_) => Center(child: CircularProgressIndicator()));
              },
            ),
          ),
        );
      }),
    );
  }
}
