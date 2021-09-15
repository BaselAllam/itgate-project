import 'dart:io';
import 'package:mosque/models/mosque/mosqueModel.dart';
import 'package:mosque/models/shared.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class MosqueController extends Model{

  List<MosqueModel> _allMosques = [];
  List<MosqueModel> get allMosques => _allMosques;

  bool _isAddMosqueLoading = false;
  bool get isAddMosqueLoading => _isAddMosqueLoading;


  Future<bool> addMosque(String name, String img) async {

    _isAddMosqueLoading = true;
    notifyListeners();

    Position _location = await currentPosition();

    Map<String, dynamic> _data = {
      'name' : name,
      'img' : img,
      'lat' : _location.latitude,
      'long' : _location.longitude
    };

    http.Response _req = await http.post(
      Uri.parse('https://mosque-60e22-default-rtdb.firebaseio.com/mosques.json'),
      body: json.encode(_data)
    );

    print(_req.statusCode);

    if(_req.statusCode == 200) {
      MosqueModel _newMosque = MosqueModel(name, img, _location.latitude, _location.longitude);
      _allMosques.add(_newMosque);
      _isAddMosqueLoading = false;
      notifyListeners();
      return true;
    }else{
      _isAddMosqueLoading = false;
      notifyListeners();
      return false;
    }
  }
}




// Scoped Model
    // Model => class which controller inherit from to can notify Liseteners and Sharing Data
    // ScopedModelDecendent => class which be a parent for any widget want to listen to changes and sharing data
    // ScopedModel => class which being on the top of app widget tree ( means a Parent for MaterialApp )