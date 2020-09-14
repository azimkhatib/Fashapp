import 'package:flutter/material.dart';
import 'package:onlineshop/login/login.dart';
import 'package:onlineshop/login/sign_in.dart';


import '../main.dart';
import 'package:onlineshop/main.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  String _name;
  String _email;
  String _mob;
  String _pass;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),

      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }
  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildMob() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Mob No',
          hintText: "+91"),
      maxLength: 10,
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Mob No is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _mob = value;
      },
    );
  }
  Widget _buildPass() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _pass = value;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Fashapp",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 40.0, 0.0, 0.0),
                  child: Text(
                    "Signup",
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
//                Container(
//                  padding: EdgeInsets.fromLTRB(15.0, 135.0, 0.0, 0.0),
//                  child: Text(
//                    "FashApp",
//                    style: TextStyle(
//                      fontSize: 60.0,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                ),
//                Container(
//                  padding: EdgeInsets.fromLTRB(245, 135, 0.0, 0.0),
//                  child: Text(
//                    ".",
//                    style: TextStyle(
//                      fontSize: 65.0,
//                      fontWeight: FontWeight.bold,
//                      color: Colors.green,
//                    ),
//                  ),
//                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10,left: 20.0, right: 20),

            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  _buildName(),
                  _buildEmail(),
                  _buildMob(),
                  _buildPass(),
                  SizedBox(height: 20),

//                TextFormField(
//                  decoration: InputDecoration(
//                      labelText: "Name",
//                      labelStyle: TextStyle(
//                          fontFamily: "Montserrat",
//                          fontWeight: FontWeight.bold,
//                          color: Colors.grey
//                      )
//                  ),
//                  // ignore: missing_return
////                  validator: (String value){
////                    if (value.isEmpty){
////                      return "Name is Required";
////                    }
////                  },
////                  onSaved: (String value){
////                    _name = value;
////                  },=============
//                ),
//                TextField(
//                  decoration: InputDecoration(
//                      labelText: "Mobile No",
//                      labelStyle: TextStyle(
//                          fontFamily: "Montserrat",
//                          fontWeight: FontWeight.bold,
//                          color: Colors.grey
//                      )
//                  ),
//                ),
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
////                SizedBox(height: 13.0),
//                TextField(
//                  decoration: InputDecoration(
//                      labelText: "Create Password",
//                      labelStyle: TextStyle(
//                          fontFamily: "Montserrat",
//                          fontWeight: FontWeight.bold,
//                          color: Colors.grey
//                      )
//
//                  ),
//                  obscureText: true,
//                ),
                  SizedBox(height:  1.0,),
                  Container(
                    alignment: Alignment(1.0,0.0),
                    padding: EdgeInsets.only(top: 15.0,left: 20.0),
                    child: InkWell(
                      child: Text("Powerd by Edbrix",
                        style: TextStyle(
                          color: Colors.black,

                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    height: 45.0,
                    child: RaisedButton(
//                    borderRadius: BorderRadius.circular(20.0),
//                    shadowColor: Colors.greenAccent,
                      onPressed: (){
                        if (!_formKey.currentState.validate()) {
                          return;
                        }

                        _formKey.currentState.save();

                        print(_name);
                        print(_email);
                        print(_mob);
                        print(_pass);
                      },
                      color: Colors.red,
                      elevation: 7.0,

                      child: Center(
                        child: Text(
                          "Signup",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat"
                          ),
                        ),
                      ),

                    ),
                  ),
//                SizedBox(height: 60.0),
//                Container(
//                  height: 60.0,
//                  child: Material(
//                    borderRadius: BorderRadius.circular(20.0),
//                    shadowColor: Colors.greenAccent,
//                    color: Colors.red,
//                    elevation: 7.0,
//                    child: GestureDetector(
//                      onTap: (){},
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
                  SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Already Custmor ?",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 18.0
                          ),
                        ),
                        SizedBox(height: 5.0),
                        RaisedButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>LoginPage()));
                          },
                          child: Text(
                            "Login",
                            style:  TextStyle(
                              color: Colors.red,
                              fontFamily: "Montserrat",
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),

//

            ),
          )
        ],
      ),
    );
  }
}
