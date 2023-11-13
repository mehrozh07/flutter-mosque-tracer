import 'dart:developer';
import 'dart:ui' as ui;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mosque_tracer/View/auth-screens/login_view.dart';
import 'package:mosque_tracer/generated/assets.dart';
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
      Navigator.push(context, MaterialPageRoute(builder: (_)=> LoginView()));
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
          break;
        case 'requires-recent-login':
          Utils.toastMessage('Please sign in again to continue');
          break;
        case 'email-already-in-use':
          Utils.toastMessage('The account already exists for that email');
          break;
        case 'weak-password':
          Utils.toastMessage('The password provided is too weak');
          break;
        case 'operation-not-allowed':
          Utils.toastMessage('Firebase Authentication is not enabled');
          break;
        case 'too-many-requests':
          Utils.toastMessage('Too many requests. Try again later');
          break;
        case "network-request-failed":
          Utils.toastMessage('Please check your internet connection and try again');
          break;
        default:
          Utils.toastMessage('An error occurred, please try again later');
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
      log('Error code is ===> ${e.code}');
      if(e.code == 'invalid-email'){
        emailErrorText('Please enter a valid email');
      }else if(e.code == 'wrong-password'){
        passwordErrorTex('Please enter a valid password');
      }else if(e.code == 'INVALID_LOGIN_CREDENTIALS'){
        emailErrorText('Please enter valid credentials');
      }else if (e.code == 'too-many-requests'){
        emailErrorText('Access to this account has been temporarily disabled due to many failed login attempts. You can immediately restore it by resetting your password or you can try again later');
      } else if(e.code == 'user-not-found'){
        emailErrorText('No user found with this email address');
      }else if (e.code == 'weak-password'){
        passwordErrorTex('The password provided is too weak');
      }else if(e.code == 'network-request-failed'){
        Utils.toastMessage("Please check your internet connection and try again");
      }else {
        emailErrorText('An error occurred, please try again');
      }
    } catch (e) {
      setLoginLoading(false);
      Utils.toastMessage(e.toString());
    }
    return loginCredential;
  }

  bool resetLoading = false;
  bool get resetLoader => resetLoading;

  setResetLoading(bool loading) {
    resetLoading = loading;
    notifyListeners();
  }

  String? _resetEmailError;
  String? get resetEmailError => _resetEmailError;

  void resetEmailErrorText(error){
    _resetEmailError = error;
    notifyListeners();
  }


  Future<void> resetPassword(var email, context) async {
    try {
      setResetLoading(true);
      await FirebaseApi.auth.sendPasswordResetEmail(email: email);
      setResetLoading(false);
      Navigator.pop(context);
      Utils.toastMessage("Check your email for resetting your password");
      notifyListeners();
    } on FirebaseException catch (e) {
      setResetLoading(false);
      switch(e.code){
        case "invalid-email":
          _resetEmailError = "Please enter a valid email address";
          notifyListeners();
          break;
        case "user-not-found":
          _resetEmailError = "User not found for following email address";
          notifyListeners();
          break;
        case "unknown":
          _resetEmailError = "Unknown Error Occurred";
          notifyListeners();
          break;
        case "network-request-failed":
          Utils.toastMessage("Please check your internet connection and try again");
          notifyListeners();
          break;
        default:
          _resetEmailError = 'An error occurred, please try again later';
          notifyListeners();
      }
      // Utils.topFlushBarMessage("${e.message}", context, AppColors.warningColor);
    }catch(e){
      Utils.toastMessage("$e");
    }
  }

  Future<void> signOut() async{
   await FirebaseApi.auth.signOut();
    notifyListeners();
  }

  BitmapDescriptor _mosques = BitmapDescriptor.defaultMarker;
  BitmapDescriptor get mosque => _mosques;

  void setMosques(BitmapDescriptor value) {
    _mosques = value;
    notifyListeners();
  }
  void setPickupBitMap(BuildContext context) async {
    final Uint8List markerIcon =
    await getBytesFromAsset(Assets.imagesMosqueLogo, 100);
    setMosques(BitmapDescriptor.fromBytes(markerIcon));
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }


}