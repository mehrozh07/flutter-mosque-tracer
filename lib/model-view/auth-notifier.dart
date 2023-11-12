import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mosque_tracer/models/user_model.dart';
import 'package:mosque_tracer/utils/error_message.dart';
import 'package:mosque_tracer/utils/firebase_api.dart';
import 'package:mosque_tracer/utils/main_screen.dart';

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

  bool loginLoading = false;
  bool get loginLoader => loginLoading;

  setLoginLoading(bool loading) {
    loginLoading = loading;
    notifyListeners();
  }

  String? _passwordError;
  String? get passwordError => _passwordError;

  void passwordErrorTex(error){
    _passwordError = error;
    notifyListeners();
  }

  String? _emailError;
  String? get emailError => _emailError;

  void emailErrorText(error){
    _emailError = error;
    notifyListeners();
  }
  UserCredential? loginCredential;

  Future<UserCredential?> signIn(var email, var password, context) async {
    try {
      setLoginLoading(true);
      loginCredential = await FirebaseApi.auth.signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        setLoginLoading(false);
        if (value.user!.emailVerified) {
          Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> const MainScreen( )));
        } else {
          signOut();
          _emailError = "Please verify your email first";
          notifyListeners();
        }
      });
      return loginCredential;
    } on FirebaseAuthException catch (e) {
      setLoginLoading(false);
      switch(e.code){
        case "invalid-email":
          _emailError = "Please enter a valid email";
          notifyListeners();
          break;
        case 'user-not-found':
          _emailError = 'No user found with this email address';
          notifyListeners();
          break;
        case 'wrong-password':
          _passwordError = 'Please enter a valid password';
          notifyListeners();
          break;
        case 'weak-password':
          _passwordError = 'The password provided is too weak';
          notifyListeners();
          break;
        case "network-request-failed":
          Utils.toastMessage('Please check your internet connection');
          notifyListeners();
          break;
        default:
          _emailError = 'An error occurred, please try again later';
          notifyListeners();
      }
    } catch (e) {
      setLoginLoading(false);
      Utils.toastMessage('${e.toString()}');
    }
    return loginCredential;
  }

  void signOut() {
    FirebaseApi.auth.signOut();
    notifyListeners();
  }

}