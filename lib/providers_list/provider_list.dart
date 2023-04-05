import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:wether_app/providers/location_provider.dart';
import 'package:wether_app/providers/wether_provider.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<WetherProvider>(create: (_) => WetherProvider()),
  ChangeNotifierProvider<LocationProvider>(create: (_) => LocationProvider()),
];