import 'package:flutter/cupertino.dart';
import 'package:wether_app/logic/services/call_to_api.dart';

class WetherProvider with ChangeNotifier {
  bool isWetherLoading = false;
  dynamic wetherModel  ;
  CallToApi api = CallToApi();

  getLocationData(context,lat,lon)async{
    isWetherLoading = true;
    wetherModel = await api.getWetherForecast(context,lat,lon );
    isWetherLoading = false;
    notifyListeners();
  }

}