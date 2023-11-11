import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';

class AuthNotifier extends ChangeNotifier{


  bool _showPassword = false;
  bool get showPassword => _showPassword;

  showPasswordFn(){
    _showPassword = !_showPassword;
    notifyListeners();
  }
  bool _showConfirmPassword = false;
  bool get showConfirmPassword => _showConfirmPassword;

  showConfirmPasswordFn(){
    _showConfirmPassword = !_showConfirmPassword;
    notifyListeners();
  }

  bool _savePassword = false;
  bool get savePassword => _savePassword;

  setSavePassword(v){
    _savePassword = v;
    notifyListeners();
  }

  Position? _position;
  Position? get position => _position;

  setPosition(Position position){
    _position = position;
    notifyListeners();
  }

  void getCurrentLocation() async{
  Position  position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  setPosition(position);
  }

}