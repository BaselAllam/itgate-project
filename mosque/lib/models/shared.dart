import 'package:shared_preferences/shared_preferences.dart';
import 'package:geolocator/geolocator.dart';


void saveToLocal(String key, String value) async {

  SharedPreferences _shared = await SharedPreferences.getInstance();
  _shared.setString(key, value);
}


Future<String?> getFromLocal(String key) async {

  SharedPreferences _shared = await SharedPreferences.getInstance();
  return _shared.getString(key);
}


void clearLocal() async {

  SharedPreferences _shared = await SharedPreferences.getInstance();
  _shared.clear();
}

Future<Position> currentPosition() async {
  Position _geo = await Geolocator.getCurrentPosition();
  return _geo;
}