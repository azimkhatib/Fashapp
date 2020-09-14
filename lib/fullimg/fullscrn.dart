import 'package:flutter/material.dart';

class FullScren extends StatefulWidget {
  final fullscrn_picture;

  FullScren({
    this.fullscrn_picture,
});

  @override
  _FullScrenState createState() => _FullScrenState();
}

class _FullScrenState extends State<FullScren> {
  @override
  Widget build(BuildContext context) {
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
            onPressed:  () {},
          )
        ],
      ),
      body: Container(
            height: 800,
            child: Image.asset(
                widget.fullscrn_picture,
              fit: BoxFit.fill,
            ),
          ),

      );
  }
}
