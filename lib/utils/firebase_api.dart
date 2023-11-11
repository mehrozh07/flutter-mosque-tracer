import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseApi{
  static User? user;
  static final CollectionReference users = FirebaseFirestore.instance.collection("users");
  static final FirebaseAuth auth = FirebaseAuth.instance;
}