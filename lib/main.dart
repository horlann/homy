import 'package:homyyy/core/configs/environment_config.dart';
import 'package:homyyy/main/app.dart';
import 'package:homyyy/main/bootstrap.dart';

void main() async {
  final config = EnvironmentConfigProd();
  await bootstrap(() => const HomyyyApp(), config);
}
