import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

enum AppState { NOT_DOWNLOADED, DOWNLOADING, FINISHED_DOWNLOADING }

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key, required this.lat, required this.lon});

  final double lat;
  final double lon;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<WeatherPage> {
  String key = '4dbe24134496b55a1b13855ddf7c5847';

  //String key = '9b96cdf8efc1556948eac549a221701c';
  late WeatherFactory ws;
  List<Weather> _data = [];
  AppState _state = AppState.NOT_DOWNLOADED;

  @override
  void initState() {
    super.initState();
    ws = WeatherFactory(key, language: Language.UKRAINIAN);
    queryWeather();
  }

  void queryForecast() async {
    /// Removes keyboard
    FocusScope.of(context).requestFocus(FocusNode());
    setState(() {
      _state = AppState.DOWNLOADING;
    });

    List<Weather> forecasts =
        await ws.fiveDayForecastByLocation(widget.lat, widget.lon);
    setState(() {
      _data = forecasts;
      _state = AppState.FINISHED_DOWNLOADING;
    });
  }

  void queryWeather() async {
    /// Removes keyboard

    setState(() {
      _state = AppState.DOWNLOADING;
    });

    Weather weather = await ws.currentWeatherByLocation(widget.lat, widget.lon);
    setState(() {
      _data = [weather];
      _state = AppState.FINISHED_DOWNLOADING;
    });
  }

  Widget contentFinishedDownload() {
    return Column(
      children: [
        Text('Температура: ${_data.first.temperature}'),
        SizedBox(
          height: 8,
        ),
        Text('Температура (як відчувається): ${_data.first.tempFeelsLike}'),
        SizedBox(
          height: 8,
        ),
        Text('Опади: ${_data.first.weatherDescription}'),
        SizedBox(
          height: 8,
        ),
        Text('Світанок: ${_data.first.sunrise}'),
        SizedBox(
          height: 8,
        ),
        Text('Захід: ${_data.first.sunset}'),
        SizedBox(
          height: 8,
        )
      ],
    );
    return Center(
      child: ListView.separated(
        itemCount: _data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_data[index].toString()),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }

  Widget contentDownloading() {
    return Container(
      margin: const EdgeInsets.all(25),
      child: Column(children: [
        const Text(
          'Fetching Weather...',
          style: TextStyle(fontSize: 20),
        ),
        Container(
            margin: const EdgeInsets.only(top: 50),
            child:
                const Center(child: CircularProgressIndicator(strokeWidth: 10)))
      ]),
    );
  }

  Widget contentNotDownloaded() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Press the button to download the Weather forecast',
          ),
        ],
      ),
    );
  }

  Widget _resultView() => _state == AppState.FINISHED_DOWNLOADING
      ? contentFinishedDownload()
      : _state == AppState.DOWNLOADING
          ? contentDownloading()
          : contentNotDownloaded();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Divider(
          height: 20.0,
          thickness: 2.0,
        ),
        Expanded(child: _resultView())
      ],
    );
  }
}
