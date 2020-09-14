import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'dart:convert' show base64 ,json,jsonEncode ;
import 'package:onlineshop/componets/horizontal_listview.dart';
import 'package:onlineshop/componets/Products.dart';
import 'package:onlineshop/login/login.dart';
import 'package:onlineshop/pages/cart.dart';
import 'package:onlineshop/pages/home.dart';
import 'package:onlineshop/menubar/about.dart';
import 'package:onlineshop/prod/dress.dart';
//import './pages/login.dart';
import 'login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
class homepage extends StatefulWidget {

  String email = "myvista2019@gmail.com";
  String password = "vista@2019";
  homepage({this.email,this.password});
  @override
  _homepageState createState() => _homepageState();
}


class _homepageState extends State<homepage> {





  @override
  void initState() {
    super.initState();
//    checkLoginStatus();
  }
//
//  checkLoginStatus() async {
//     sharedPreferences = await SharedPreferences.getInstance();
//    if(sharedPreferences.getString("token") == null) {
//      Navigator.of(context).push(MaterialPageRoute(builder: (context) => homepage()));
//    }
//  }
  @override
  Widget build(BuildContext context) {

    Widget image_carousel = new Container(
      height:  200.0,
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage("assets/bolly2.jpg"),
            AssetImage("assets/holly.jpg"),
            AssetImage("assets/holly2.jpg"),
            AssetImage("assets/kids.jpg"),
            AssetImage("assets/kids2.jpg"),
            AssetImage("assets/mdl6.jpg"),
            AssetImage("assets/mdl777.jpg"),
            AssetImage("assets/mdl8.jpg"),
            AssetImage("assets/mdl99.jpg"),
            AssetImage("assets/mdl10.jpg"),
//          AssetImage("assets/mdl12.jpg"),
          ],
          dotSize: 4.0,
          indicatorBgPadding: 8.0,
          autoplay: true,
          dotBgColor: Colors.transparent,
          animationCurve: Curves.fastLinearToSlowEaseIn,
          animationDuration: Duration(milliseconds: 1000),
        ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text(
          "Fashapp",
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed:  () {},
          ),
          IconButton(
              icon: Icon(Icons.shopping_cart),

              color: Colors.white,
              onPressed:  () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Cart()));
              } )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName:Text(
                "Azim Khatib",
              ) ,
              accountEmail: Text(
                "azimkhatib2015@gmail.com",
              ),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
              ),

            ),
            //body

            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => homepage()));
              },
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home,color: Colors.red),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person,color: Colors.red),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => dresss()));
              },
              child: ListTile(
                title: Text("Favourietes"),
                leading: Icon(Icons.favorite , color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cart()));
              },
              child: ListTile(
                title: Text("Shopping cart"),
                leading: Icon(Icons.shopping_cart,color: Colors.red,),
              ),
            ),
//            InkWell(
//              onTap: (){},
//              child: ListTile(
//                title: Text("My Order"),
//                leading: Icon(Icons.shopping_basket,color: Colors.red),
//              ),
//            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => about()));
              },
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),

              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: ListTile(
                title: Text("Log Out"),
                leading: Icon(Icons.lock_outline,color: Colors.red),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          //image carousel begins here

          image_carousel,
          //padding widget
          Padding(padding: const EdgeInsets.all(8.0),
            child: Text("Catagories"),
          ),
          HorizontalList(),

          Padding(padding: const EdgeInsets.all(20.0),
            child: Text("Recent Product"),
          ),
//Grid view
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}

