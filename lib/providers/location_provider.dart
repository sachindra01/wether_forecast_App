import 'package:flutter/material.dart';
import 'package:wether_app/logic/services/call_to_api.dart';

class LocationProvider with ChangeNotifier {
  bool isLoading = false;
  dynamic locationModel  ;
  CallToApi api = CallToApi();

  getLocationData(context,city)async{
    isLoading = true;
    locationModel = await api.getlocation(context, city);
    isLoading = false;
    notifyListeners();
  }

}