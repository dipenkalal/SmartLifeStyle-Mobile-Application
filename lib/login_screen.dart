import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sls/register_screen.dart';
import 'package:sls/user_profile_screen.dart';
import 'package:sls/Utilities/genFormField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name="";
  String _email="",_password= "";
  @override

  showRegistertoast() {
    return Fluttertoast.showToast(
        msg: "Redirecting to registration...",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white60,
        textColor: Colors.black87,
        fontSize: 16.0);
  }

  showLogintoast() {
    return Fluttertoast.showToast(
        msg: "Login...",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white60,
        textColor: Colors.black87,
        fontSize: 16.0);
  }

  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        key: _scaffoldKey,
        // appBar:
        // AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        // ),

        backgroundColor: Color(0xFFffffff),
        body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/bg.png'),fit: BoxFit.cover,),

        ),
        child: Center(
            child: SingleChildScrollView(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 40, right: 40),
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                child: Form(
                  key: formKey, //key for form
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height:height*0.06),
                      const Text("Login", style: TextStyle(fontSize: 40, color:Color(0xFF363f93)),),
                      SizedBox(height:height*0.01),
                      const Text("to continue...", style: TextStyle(fontSize: 36, color:Color(0xFF363f93)),),
                      SizedBox(height:height*0.01),
                      const Text("How are you today?", style: TextStyle(fontSize: 20, color:Color(0xFF363f93)),),
                      SizedBox(height: height*0.10,),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          prefixIcon: Icon(Icons.email_outlined),
                          labelText: "Enter your email id",
                        ),
                        validator: (value){
                          if(value!.isEmpty || RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)){
                            return "Enter a valid email address!";
                          }else{
                            return null;
                          }
                          onSaved: (email)=> _email = email;
                        },
                      ),
                      SizedBox(height: height*0.03,),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            prefixIcon: Icon(Icons.password),
                            labelText: "Enter your password"

                        ),
                        validator: (value){
                          if(value!.isEmpty || RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)){
                            return "Wrong Password";
                          }else{
                            return null;
                          }
                          onSaved: (password)=> _password = password;
                        },
                      ),

                      SizedBox(height: height*0.03,),

                      SizedBox(height: height*0.03,),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xFF363f60),
                                        Color(0xFF363f90),
                                        Color(0xFF363f99),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.all(16.0),
                                  textStyle: const TextStyle(fontSize: 20),
                                ),
                                onPressed: () {
                                  // if(_scaffoldKey.currentState.validate()){
                                  //   _scaffoldKey.currentState.save();
                                  // }

                                  showLogintoast();
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserProfileScreen()));
                                },
                                child: const Text('Login'),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: height*0.03,),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.deepPurple,
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            showRegistertoast();
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Registration()));
                          },
                          child: const Text('First Time User? Register here'),
                        ),
                      ),],
                  ),
                ),
              ),
            )
        ),)
    );
  }
}
