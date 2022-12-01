// import 'dart:io';
//
// import 'package:conditional_questions/conditional_questions.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:sls/home_screen.dart';
// import 'package:sls/login_screen.dart';
// import 'package:sls/register_screen.dart';
//
// class AuthController extends GetxController{
//   //AuthController.instance...
//   static AuthController instance = Get.find();
//   //email, pass ,name
//   late Rx<User?> _user;
//   FirebaseAuth auth = FirebaseAuth.instance;
//
//
//   void OnReady(){
//     super.onReady();
//     _user = Rx<User?>(auth.currentUser);
//     _user.bindStream(auth.userChanges());
//     ever(_user, _initialScreen);
//   }
//
//   _initialScreen(User? user){
//     if(user == null){
//       print("Login Page");
//       Get.offAll(()=>LoginScreen());
//     } else{
//       Get.offAll(()=>Registration());
//     }
//   }
//
//   void register(String email, password) async{
//     try{
//       await auth.createUserWithEmailAndPassword(email: email, password: password);
//     }
//     catch(e){
//       Get.snackbar("About User", "User Message",
//       backgroundColor: Colors.deepPurple,
//       snackPosition: SnackPosition.BOTTOM,
//       titleText: Text("Sorry... Account Creation Failed",style: TextStyle(color: Colors.white)),
//       );
//     }
//   }
// }