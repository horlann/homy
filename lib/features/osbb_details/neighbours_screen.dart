import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homyyy/features/user/user_repository.dart';

import '../../../../main/di.dart';
@RoutePage()
class NeighboursScreen extends StatelessWidget {
  const NeighboursScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Сусіди')),
      body: FutureBuilder(
          future:
              di.get<UserRepository>().getUsersByOsbb('7NbuVsOKuRSaGLjF8Enj'),
          builder: (context, snapshot) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 12,
                  );
                },
                itemBuilder: (context, index) {
                  return GestureDetector(
                      child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amber.withOpacity(0.2),
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 32, width: 32, child: CircleAvatar()),
                        SizedBox(
                          width: 8,
                        ),
                        SizedBox(
                            height: 36,
                            child: Text('${snapshot.data?[index].name ?? ''}')),
                      ],
                    ),
                  ));
                },
                itemCount: snapshot.data?.length ?? 0,
              ),
            );
          }),
    );
  }
}
