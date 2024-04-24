import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homyyy/features/government/models/government_user.dart';
import 'package:homyyy/features/user/user_repository.dart';
import 'package:homyyy/main/di.dart';

@RoutePage()
class AdminInfoScreen extends StatelessWidget {
  final String osbbId;

  const AdminInfoScreen({super.key, required this.osbbId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Керівник ОСББ'),
      ),
      body: FutureBuilder<List<GovernmentUserEntity>>(
          future: di.get<UserRepository>().getGovUsersByOSBBId(osbbId),
          builder: (contetx, snapshot) {
            if (snapshot.hasData) {
              final admin = snapshot.data
                  ?.firstWhereOrNull((e) => e.role == GovernmentUserRole.admin);
              return Column(children: [
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: 102,
                  height: 102,
                  child: Image.network(admin?.imagePath ?? "error"),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  admin?.name ?? "error",
                  style: TextStyle(fontSize: 26),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  admin?.phone ?? "error",
                  style: TextStyle(fontSize: 20),
                ),
                Divider(),
                Text('Персонал ${(snapshot.data ?? []).length}'),
                Divider(),
                Flexible(
                  child: Wrap(
                    children: ((snapshot.data ?? [])
                        .map((e) => _PersonalWidget(
                              uset: e,
                            ))
                        .toList()),
                  ),
                )
              ]);
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error'),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}

class _PersonalWidget extends StatelessWidget {
  final GovernmentUserEntity uset;

  const _PersonalWidget({super.key, required this.uset});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: 44,
        height: 44,
        child: Image.network(uset.imagePath ?? ""),
      ),
      SizedBox(
        height: 12,
      ),
      Text(
        uset.name ?? "error",
        style: TextStyle(fontSize: 18),
      ),
      SizedBox(
        height: 12,
      ),
      Text(
        uset.phone ?? "error",
        style: TextStyle(fontSize: 14),
      ),
      SizedBox(
        height: 12,
      ),
      Text(
        uset.role.name ?? "error",
        style: TextStyle(fontSize: 14),
      ),
    ]);
  }
}
