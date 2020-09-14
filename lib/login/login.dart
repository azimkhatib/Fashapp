import 'dart:convert' show base64 ,json,jsonEncode ;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:onlineshop/login/sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:onlineshop/main.dart';

final storage = FlutterSecureStorage();

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.red, Colors.blueGrey],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: _isLoading ? Center(child: CircularProgressIndicator()) : ListView(
          children: <Widget>[
            headerSection(),
            textSection(),
            buttonSection(),
            Container(
              alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(55.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "new to FashApp ?",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RaisedButton(
                          child: Text(
                            "Sign Up",
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }



  Future<String> signIn(String email, password) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var jsonResponse = null;

    var response = await http.post("https://services.edbrix.net/auth/login",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
            <String,String> {
              "Email" : email,
              "Password" : password,
              "SECRETKEY":"MjQ1QDEyIzJZSEQtODVEQTJTM0RFQTg1Mz1JRTVCNEE1Mg==",
              'APIKEY' : 'QVBAMTIjMllIRC1TREFTNUQtNUFTRksyMjEy',
            }
        ));
    if(response.statusCode == 200) {

      jsonResponse = json.decode(response.body);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      if(jsonResponse != null) {
//        setState(() {
//          _isLoading = false;
//        });
        sharedPreferences.setString("token", jsonResponse['token']);
//        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => homepage()), (Route<dynamic> route) => false);
      }
    }
    else {
      setState(() {
        _isLoading = false;
      });
      print(response.body);

    }
  }


  Container buttonSection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60.0,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      margin: EdgeInsets.only(top: 40.0),
      child: _isLoading ?(
          CircularProgressIndicator()):
         RaisedButton(
//        onPressed: emailController.text == "" || passwordController.text == "" ? null : () {

//          signIn(emailController.text, passwordController.text);
//        },
        onPressed: () async{
          setState(() {
            _isLoading = true;
          });
          var email = emailController.text;
          var password = passwordController.text;
          var jwt = await signIn(email, password);
//          setState(() {
//            _isLoading = false;
//          });
          if (email == "myvista2015@gmail.com" && password == "vista@2019") {

            Navigator.push(context, MaterialPageRoute(builder: (context) => homepage(email: "myvista2019@gmail.com",password: "vista@2019",)));
            storage.write(key: "jwt", value: jwt);
            setState(() {
              _isLoading = false;
            });
          }
         else{
            Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
          }
        },
          elevation: 0.0,
          color: Colors.red,
          child: Text("Login", style: TextStyle(color: Colors.white70,fontSize: 25.0)),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      );

  }

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  Container textSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: emailController,
            cursorColor: Colors.white,

            style: TextStyle(color: Colors.white70),
            decoration: InputDecoration(
              icon: Icon(Icons.email, color: Colors.white70),
              hintText: "Email",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
              hintStyle: TextStyle(color: Colors.white70),
            ),
          ),
          SizedBox(height: 30.0),
          TextFormField(
            controller: passwordController,
            cursorColor: Colors.white,
            obscureText: true,
            style: TextStyle(color: Colors.white70),
            decoration: InputDecoration(
              icon: Icon(Icons.lock, color: Colors.white70),
              hintText: "Password",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
              hintStyle: TextStyle(color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }

  Container headerSection() {
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: Text("Edbrix"
                   " FashApp",
          style: TextStyle(
              color: Colors.white70,
              fontSize: 60.0,
              fontWeight: FontWeight.bold)
      ),


    );


  }
}