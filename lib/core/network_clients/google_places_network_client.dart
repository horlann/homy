import 'dart:developer';

import 'package:dio/dio.dart';

import '../constants/apikeys.dart';
import '../constants/general_constants.dart';

class GooglePlacesDioBuilder {
  static const instanceKey = 'googlePlacesDio';

  static Dio getDio() {
    final options = BaseOptions(
      baseUrl: 'https://maps.googleapis.com/maps/api/place',
      receiveDataWhenStatusError: true,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      queryParameters: {'key': googlePlacesApiKey},
    );

    final dio = Dio(options)
      ..interceptors.addAll(
        <Interceptor>[
          LogInterceptor(
            requestBody: true,
            responseBody: true,
            logPrint: (res) {
              log(res.toString(), name: 'BE');
            },
          ),
        ],
      );

    return dio;
  }
}
