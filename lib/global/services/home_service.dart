import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_futurebuilder_structure/global/models/astronomy_model/astronomy_model.dart';
import 'package:flutter_futurebuilder_structure/global/models/sports_model/sports_model.dart';

import 'package:logger/logger.dart';

Future<SportsModel> sportsService() async {
  var response =
      await Dio().get("https://weatherapi-com.p.rapidapi.com/sports.json",
          queryParameters: {"q": 'london'},
          options: Options(headers: {
            'X-RapidAPI-Host': 'weatherapi-com.p.rapidapi.com',
            'X-RapidAPI-Key': dotenv.env['APIKEY']
          }));
  Logger().i(
    response.data,
  );
  return SportsModel.fromJson(response.data);
}

Future<AstronomyModel> astronomyService() async {
  var response =
      await Dio().get("https://weatherapi-com.p.rapidapi.com/astronomy.json",
          queryParameters: {"q": 'london'},
          options: Options(headers: {
            'X-RapidAPI-Host': 'weatherapi-com.p.rapidapi.com',
            'X-RapidAPI-Key': dotenv.env['APIKEY']
          }));

  Logger().i(
    response.data,
  );
  return AstronomyModel.fromJson(response.data);
}
