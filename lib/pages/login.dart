////import 'dart:html';
//import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//import 'package:google_sign_in/google_sign_in.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'home.dart';
//
//class Login extends StatefulWidget {
//  @override
//  _LoginState createState() => _LoginState();
//}
//
//class _LoginState extends State<Login> {
//  final GoogleSignIn googleSignIn = GoogleSignIn();
//  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//  SharedPreferences preferences;
//  bool loading = false;
//  bool isLoading = false;
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    isSignedIn();
//  }
//  void isSignedIn() async {
//    setState(() {
//      loading = true;
//    });
//    preferences = await SharedPreferences.getInstance();
//    isLoading = await googleSignIn.isSignedIn();
//    if (isLoading){
//      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => homepage()));
//    }
//    setState(() {
//      loading = false;
//    });
//  }
//  Future handleSignIn() async{
//    preferences = await SharedPreferences.getInstance();
//    setState(() {
//      loading = true;
//    });
//
//    GoogleSignInAccount googleUser = await googleSignIn.signIn();
//    GoogleSignInAuthentication googleSignInAuthentication = await googleUser.authentication;
//    FirebaseUser firebaseUser = await firebaseAuth.signInWithGoogle(
//        idToken: googleSignInAuthentication.idToken, accessToken: googleSignInAuthentication.accessToken);
//
//    if (firebaseUser != null){
//      final QuerySnapshot result = await Firestore.instance.collection("user").where("id",isEqualTo: firebaseUser.uid).getDocuments();
//      final List<DocumentSnapshot> document = result.documents;
//      if (document.length == 0){
//        //INSERT TO USER TO COLLECTION===========
//        Firestore.instance.collection("user").document(firebaseUser.uid).setData(
//            {"id": firebaseUser.uid,
//            "username": firebaseUser.displayName,
//            "profileOicture": firebaseUser.photoUrl
//            });
//        await preferences.setString("id", firebaseUser.uid);
//        await preferences.setString("username", firebaseUser.displayName);
//        await preferences.setString("photoUrl", firebaseUser.photoUrl);
//      }
//      else{
//        await preferences.setString("id", document[0]['id']);
//        await preferences.setString("id", document[0]['username']);
//        await preferences.setString("id", document[0]['photoUrl']);
//      }
//      Fluttertoast.showToast(msg: "Login successfull");
//      setState(() {
//        loading = false;
//      });
//
//    }else{
//
//    }
//
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.white,
//        centerTitle:  true,
//        title: Text("Login"),
//        elevation: 0.5,
//      ),
//      body: Stack(
//        children: <Widget>[
//          Center(
//            child: FlatButton(
//              onPressed: (){
//                handleSignIn();
//              },
//              child: Text("Sign In / Sign up with google"),
//
//            ),
//          ),
//          Visibility(
//            visible: loading ?? true,
//            child: Container(
//              color: Colors.white.withOpacity(0.7),
//              child: CircularProgressIndicator(
//                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
//              ),
//            ),
//          )
//        ],
//      ),
//    );
//  }
//}
