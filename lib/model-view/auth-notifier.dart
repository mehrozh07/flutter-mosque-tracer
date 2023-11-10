import 'package:flutter/foundation.dart';

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

}