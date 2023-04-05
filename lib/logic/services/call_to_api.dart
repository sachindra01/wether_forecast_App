import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:wether_app/constants/api_endpoint.dart';
import 'package:wether_app/constants/api_key.dart';
import 'package:wether_app/core/dio/dio_client.dart';
import 'package:wether_app/logic/models/location_model.dart';
import 'package:wether_app/logic/models/weather_model.dart';

class CallToApi {
Future getlocation(context,city) async {
 try {
      var response = await dio.get(locationEndpoint, queryParameters:{
        "q":city,
        "appid": apiKey});
      if (response.statusCode == 200) {
        final result =  List<Map<String, dynamic>>.from(response.data);
        final data = result.map((e) => LocationModel.fromJson(e)).toList();
        return data;
      } else {
        return null;
      }
    } on DioError catch (e) {
      log(e.message.toString());
    } catch (e) {
      log(e.toString());
    }
    
  }
  Future getWetherForecast(context,lat,lon) async {
 try {
      var response = await dio.get(wetherEndpoint, queryParameters:{
        "lat":lat,
        "lon":lon,
        "appid": apiKey});
      if (response.statusCode == 200) {
        final data  = WetherModel.fromJson(response.data);
        // final result =  List<Map<String, dynamic>>.from(response.data);
        // final data = result.map((e) => LocationModel.fromJson(e)).toList();
        return data;
      } else {
        return null;
      }
    } on DioError catch (e) {
      log(e.message.toString());
    } catch (e) {
      log(e.toString());
    }
    
  }
}