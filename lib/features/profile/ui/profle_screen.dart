import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homyyy/core/routing/app_router.gr.dart';
import 'package:homyyy/features/auth/cubits/auth/auth_cubit.dart';
import 'package:homyyy/features/auth/data/repositories/user_repository.dart';
import 'package:homyyy/features/home/ui/widgets/home_sections_widget.dart';
import 'package:homyyy/features/home/ui/widgets/home_title_widget.dart';
import 'package:homyyy/features/osbb/cubit/osbb_cubit.dart';
import 'package:homyyy/main/di.dart';
import 'package:shared/base_cubit/base_cubit.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return state.mapOrNull(auth: (user) {
              return Scaffold(
                appBar: AppBar(),
                body: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(children: [
                      CircleAvatar(
                        radius: 64,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(user.user?.name ?? "error"),
                      SizedBox(
                        height: 16,
                      ),
                      Text(user.user?.phone ?? "error"),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      BaseBlocProvider<OsbbCubit, OsbbState>(
                        create: (context) => di.get<OsbbCubit>()..init('1'),
                        child: Builder(builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: BlocBuilder<OsbbCubit, OsbbState>(
                              builder: (BuildContext context, OsbbState state) {
                                return state.maybeMap(
                                    orElse: () => Center(child: Text('error')),
                                    idle: (idleState) => Column(children: [
                                          HomePageWidget(
                                            osbbModel: idleState.osbb,
                                          ),
                                        ]),
                                    loading: (_) => Center(
                                        child: CircularProgressIndicator()));
                              },
                            ),
                          );
                        }),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.amber.withOpacity(0.2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  children: [
                                    Text(
                                      'Поточний рахунок: 657 грн',
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'За наступний місяць: 1808 грн',
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Material(
                              color: Colors.green.withOpacity(0.2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              child: IconButton(
                                hoverColor: Colors.amber.withOpacity(0.2),
                                highlightColor: Colors.amber.withOpacity(0.2),
                                focusColor: Colors.amber.withOpacity(0.2),
                                icon: Icon(Icons.add),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      const Spacer(),
                      Center(
                        child: RoundedButton(
                            callback: () {
                              context.read<AuthCubit>().logout();
                            },
                            text: "Вийти"),
                      ),
                      SizedBox(
                        height: 16,
                      )
                    ]),
                  ),
                ),
              );
            }) ??
            const SizedBox();
      },
    );
  }
}
