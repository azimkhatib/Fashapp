//import 'dart:convert';
//
//import 'package:flutter/material.dart';
//import 'package:onlineshop/main.dart';
//import 'sign_in.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//import 'package:http/http.dart' as http;
//
//class Login extends StatefulWidget {
//  @override
//  _LoginState createState() => _LoginState();
//}
//
//class _LoginState extends State<Login> {
//
//  bool _isLoading = false;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      resizeToAvoidBottomPadding: false,
//      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Container(
//            child: _isLoading ? Center(child: CircularProgressIndicator()) :Stack( //==============/???????
//              children: <Widget>[
//                Container(
//                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
//                  child: Text(
//                    "Edbrix",
//                    style: TextStyle(
//                      fontSize: 60.0,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                ),
//                Container(
//                  padding: EdgeInsets.fromLTRB(15.0, 165.0, 0.0, 0.0),
//                  child: Text(
//                    "FashApp",
//                    style: TextStyle(
//                      fontSize: 60.0,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                ),
//                Container(
//                  padding: EdgeInsets.fromLTRB(245, 165, 0.0, 0.0),
//                  child: Text(
//                    ".",
//                    style: TextStyle(
//                      fontSize: 65.0,
//                      fontWeight: FontWeight.bold,
//                      color: Colors.green,
//                    ),
//                  ),
//                ),
//              ],
//            ),
//          ),
//
//          Container(
//            padding: EdgeInsets.only(top: 50,left: 20.0, right: 20),
//            child: Column(
//              children: <Widget>[
//                TextField(
//                  decoration: InputDecoration(
//                      labelText: "Email",
//                      labelStyle: TextStyle(
//                          fontFamily: "Montserrat",
//                          fontWeight: FontWeight.bold,
//                          color: Colors.grey
//                      )
//                  ),
//                ),
//                SizedBox(height: 20.0),
//                TextField(
//                  decoration: InputDecoration(
//                      labelText: "Password",
//                      labelStyle: TextStyle(
//                          fontFamily: "Montserrat",
//                          fontWeight: FontWeight.bold,
//                          color: Colors.grey
//                      )
//
//                  ),
//                  obscureText: true,
//                ),
//                SizedBox(height:  5.0,),
//                Container(
//                  alignment: Alignment(1.0,0.0),
//                  padding: EdgeInsets.only(top: 15.0,left: 20.0),
//                  child: InkWell(
//                    child: Text("Forget Password",
//                      style: TextStyle(
//                        color: Colors.green,
//                        fontWeight: FontWeight.bold,
//                        decoration: TextDecoration.underline,
//                      ),
//                    ),
//                  ),
//                ),
//                SizedBox(height: 60.0),
//
//                Container(
//                  height: 60.0,
//                  child: Material(
//                    borderRadius: BorderRadius.circular(20.0),
//                    shadowColor: Colors.greenAccent,
//                    color: Colors.red,
//                    elevation: 7.0,
//                    child: GestureDetector(
//                      onTap: (){
//                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => homepage()));
//                      },
//                      child: Center(
//                        child: Text(
//                          "Login",
//                          style: TextStyle(
//                              color: Colors.white,
//                              fontSize: 27,
//                              fontWeight: FontWeight.bold,
//                              fontFamily: "Montserrat"
//                          ),
//                        ),
//                      ),
//                    ),
//                  ),
//                ),
//                SizedBox(height: 30.0),
//                Padding(
//                  padding: const EdgeInsets.all(15.0),
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      Text(
//                        "New To FashApp ?",
//                        style: TextStyle(
//                            fontFamily: "Montserrat",
//                            fontSize: 18.0
//                        ),
//                      ),
//                      SizedBox(height: 5.0),
//                      InkWell(
//                        onTap: (){
//                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
//                        },
//                        child: Text(
//                          "Ragister",
//                          style:  TextStyle(
//                            color: Colors.red,
//                            fontFamily: "Montserrat",
//                            fontSize: 18.0,
//                            fontWeight: FontWeight.bold,
//                            decoration: TextDecoration.underline,
//                          ),
//                        ),
//                      )
//                    ],
//                  ),
//                )
//              ],
//            ),
//          )
//        ],
//      ),
//    );
//  }
//}
//signIn(String email, pass) async {
//  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//  var jsonResponse = null;
//
//  var response = await http.post("https://services.edbrix.net/auth/login",
//      headers: <String, String>{
//        'Content-Type': 'application/json; charset=UTF-8',
//      },
//      body: jsonEncode(
//          <String,String> {
//            "Email" : email,
//            "Password" : pass,
//            "SECRETKEY":"MjQ1QDEyIzJZSEQtODVEQTJTM0RFQTg1Mz1JRTVCNEE1Mg==",
//            'APIKEY' : 'QVBAMTIjMllIRC1TREFTNUQtNUFTRksyMjEy',
//
//
//
//          }
//      ));
//  if(response.statusCode == 200) {
//    jsonResponse = json.decode(response.body);
//    print('Response status: ${response.statusCode}');
//    print('Response body: ${response.body}');
//    if(jsonResponse != null) {
//      setState(() {
//        _isLoading = false;
//      });
//      sharedPreferences.setString("token", jsonResponse['token']);
//      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => homepage()), (Route<dynamic> route) => false);
//    }
//  }
//  else {
//    setState(() {
//      _isLoading = false;
//    });
//    print(response.body);
//  }
//}
//
