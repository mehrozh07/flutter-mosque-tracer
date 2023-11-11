import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? firstName;
  String? userId;
  String? lastName;
  String? userName;
  String? userEmail;
  String? phoneNumber;
  String? userProfile;

  UserModel({
    this.userId,
    this.firstName,
    this.lastName,
    this.userName,
    this.userEmail,
    this.phoneNumber,
    this.userProfile,
  });

  factory UserModel.fromJson(json) => UserModel(
        userId: json['userId'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        userName: json['userName'],
        userEmail: json['emailId'],
        userProfile: json['userProfile'],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "fistName": firstName,
        "lastName": lastName,
        "userName": userName,
        "emailId": userEmail,
        "phoneNumber": phoneNumber,
        "userProfile": userProfile,
      };
}
