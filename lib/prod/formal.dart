import 'package:flutter/material.dart';
import 'package:onlineshop/pages/product_details.dart';

class Formal extends StatefulWidget {
  @override
  _FormalState createState() => _FormalState();
}

class _FormalState extends State<Formal> {

  var formal_listt = [
    {
      "name": "U.S.Pollo",
      "picture": "assets/fr.jpg",
      "old price": 1999,
      "price" : 1699,

    },
    {
      "name": "Van Husen",
      "picture": "assets/fr1.jpg",
      "old price": 2999,
      "price" : 2199,

    },
    {
      "name": "Bribger",
      "picture": "assets/fr2.jpg",
      "old price": 1700,
      "price" : 1299,

    },
    {
      "name": "Raymond",
      "picture": "assets/fr3.jpg",
      "old price": 2499,
      "price" : 1499,

    },
    {
      "name": "Peter Englend",
      "picture": "assets/fr4.jpg",
      "old price": 2400,
      "price" : 1700,

    },
    {
      "name": "Shooper",
      "picture": "assets/fr5.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "Faballey.",
      "picture": "assets/fr6.jpg",
      "old price": 2100,
      "price" : 1299,

    },
    {
      "name": "FabIndia",
      "picture": "assets/fr7.jpg",
      "old price": 1999,
      "price" : 1199,

    },
    {
      "name": "John Players",
      "picture": "assets/fr8.jpg",
      "old price": 3199,
      "price" : 2499,

    },
    {
      "name": "Park Avenue",
      "picture": "assets/fr9.jpg",
      "old price": 3499,
      "price" : 2499,

    },
    {
      "name": "Wills Lifestyle",
      "picture": "assets/inf2.jpg",
      "old price": 1999,
      "price" : 1499,

    },
    {
      "name": "Blackberrys",
      "picture": "assets/inf3.jpg",
      "old price": 2000,
      "price" : 1399,

    },
    {
      "name": "Arrow",
      "picture": "assets/inf10.jpg",
      "old price": 2499,
      "price" : 1899,

    },
    {
      "name": "H&M",
      "picture": "assets/inf.jpg",
      "old price": 2199,
      "price" : 1699,

    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Formals",
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: GridView.builder(
          itemCount: formal_listt.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
          itemBuilder: (BuildContext context , int index)
          {
            return informal_prod (
              prodcut_nm: formal_listt[index]["name"],
              prodcut_pic: formal_listt[index]["picture"],
              prodcut_old: formal_listt[index]["old price"],
              prodcut_new: formal_listt[index]["price"],
            );
          } ),
    );
  }
}
class informal_prod extends StatelessWidget {
  final prodcut_nm;
  final prodcut_pic;
  final prodcut_old;
  final prodcut_new;

  informal_prod ({
    this.prodcut_nm,
    this.prodcut_pic,
    this.prodcut_old,
    this.prodcut_new
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child:  Hero(
        tag: Text("kazim"),
        child: Material(
          child: InkWell(
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetails(
                prod_detail_name: prodcut_nm,
                prod_detail_price: prodcut_new,
                prod_detail_oldprice: prodcut_old,
                prod_detail_picture: prodcut_pic,
              ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white60,
                  child:Row(
                      children: <Widget>[
                  Expanded(
                  child: Text(prodcut_nm,
                      style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0
                      )),
                ),
                Text("\Rs ${prodcut_new}",
                    style: TextStyle(
                      color:  Colors.red,
                      fontWeight: FontWeight.bold,
                    )
                ),
                ],
              )
          ),
          child: Image.asset(prodcut_pic,
            fit: BoxFit.cover,
          ),
        ),
      ),

    ),
    ),
    );
  }
}

