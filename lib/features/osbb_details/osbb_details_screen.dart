import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homyyy/features/home/ui/widgets/home_title_widget.dart';
import 'package:homyyy/features/osbb/data/models/osbb_model.dart';
import 'package:homyyy/features/weather/weather_page.dart';

@RoutePage()
class OSBBInfoScreen extends StatelessWidget {
  final OSBBModel osbbModel;

  const OSBBInfoScreen({super.key, required this.osbbModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Приміщення'),
      ),
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 24,
          ),
          HomePageWidget(
            osbbModel: osbbModel,
          ),
          SizedBox(
            height: 20,
          ),
          Text('Кількість квартир-29'),
          SizedBox(
            height: 12,
          ),
          Text('Кількість мешканців-167`'),
          SizedBox(
            height: 12,
          ),

          Divider(),
          SizedBox(
            height: 12,
          ),

          Text(
            'Погода',
            style: TextStyle(fontSize: 20),
          ),
          Divider(),
          //todo:
          Flexible(
            child: WeatherPage(
              lat: 50,
              lon: 32,
            ),
          )
        ]),
      ),
    );
  }
}
