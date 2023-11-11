import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mosque_tracer/models/user_model.dart';
import 'package:mosque_tracer/utils/error_message.dart';
import 'package:mosque_tracer/utils/firebase_api.dart';

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

  String? _registerPasswordError;
  String? get registerPasswordError => _registerPasswordError;

  void registerPasswordText(error){
    _registerPasswordError = error;
    notifyListeners();
  }

  String? _registerEmailError;
  String? get registerEmailError => _registerEmailError;

  void registerEmailText(error){
    _registerEmailError = error;
    notifyListeners();
  }

  bool registerLoading = false;
  bool get registerLoader => registerLoading;

  setRegisterLoading(bool loading) {
    registerLoading = loading;
    notifyListeners();
  }
  UserCredential? userCredential;

  Future<UserCredential?> registerUser(String email, String password, context) async {
    try {
      UserCredential? userCredential;
      setRegisterLoading(true);
      userCredential = await FirebaseApi.auth.createUserWithEmailAndPassword(email: email, password: password);
      await FirebaseApi.users.doc(userCredential.user?.uid).set(UserModel(
        userId: userCredential.user?.uid,
        userEmail: email,
        userProfile: null,
      ).toJson());
      User? user = userCredential.user;
      await user?.sendEmailVerification();
      setRegisterLoading(false);
      signOut();
      Utils.toastMessage('visit Gmail to verify your email account on');
      notifyListeners();
    } on FirebaseException catch (e) {
      setRegisterLoading(false);
      switch(e.code){
        case "invalid-email":
          Utils.toastMessage('Please enter a valid email address');
          // notifyListeners();
          break;
        case 'requires-recent-login':
          Utils.toastMessage('Please sign in again to continue');
          // notifyListeners();
          break;
        case 'email-already-in-use':
          Utils.toastMessage('The account already exists for that email');
          // notifyListeners();
          break;
        case 'weak-password':
          Utils.toastMessage('The password provided is too weak');
          // notifyListeners();
          break;
        case 'operation-not-allowed':
          Utils.toastMessage('Firebase Authentication is not enabled');
          // notifyListeners();
          break;
        case 'too-many-requests':
          Utils.toastMessage('Too many requests. Try again later');
          // notifyListeners();
          break;
        case "network-request-failed":
          Utils.toastMessage('Please check your internet connection and try again');
          // notifyListeners();
          break;
        default:
          Utils.toastMessage('An error occurred, please try again later');
          // notifyListeners();
      }
    }
    return userCredential;
  }

  void signOut() {
    FirebaseApi.auth.signOut();
    notifyListeners();
  }

}