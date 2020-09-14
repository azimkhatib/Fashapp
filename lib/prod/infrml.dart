import 'package:flutter/material.dart';
import 'package:onlineshop/pages/product_details.dart';

class formal extends StatefulWidget {
  @override
  _formalState createState() => _formalState();
}

class _formalState extends State<formal> {

  var formal_list = [
    {
      "name": "Paige",
      "picture": "assets/in99.jpg",
      "old price": 2900,
      "price" : 1699,

    },
    {
      "name": "Louis Phillips",
      "picture": "assets/inff.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "Paige",
      "picture": "assets/inf1.jpg",
      "old price": 1500,
      "price" : 899,

    },
    {
      "name": "Levi's",
      "picture": "assets/inf8.jpg",
      "old price": 2499,
      "price" : 1899,

    },
    {
      "name": "Ajiol",
      "picture": "assets/inf3.jpg",
      "old price": 1400,
      "price" : 700,

    },
    {
      "name": "Uniqlo",
      "picture": "assets/inf4.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "Rag & Bon",
      "picture": "assets/inf5.jpg",
      "old price": 2100,
      "price" : 1299,

    },
    {
      "name": "3Sixteen",
      "picture": "assets/inf6.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "Madewell",
      "picture": "assets/inf7.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "ARK",
      "picture": "assets/inf.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "U.S.Pollo",
      "picture": "assets/inf2.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "CK",
      "picture": "assets/inf3.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "Wrangler",
      "picture": "assets/inf10.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "ONN",
      "picture": "assets/inf.jpg",
      "old price": 2100,
      "price" : 1499,

    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "In-Formals",
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: GridView.builder(
          itemCount: formal_list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
          itemBuilder: (BuildContext context , int index)
          {
            return formal_product (
              prodcut_nm: formal_list[index]["name"],
              prodcut_pic: formal_list[index]["picture"],
              prodcut_old: formal_list[index]["old price"],
              prodcut_new: formal_list[index]["price"],
            );
          } ),
    );
  }
}
class formal_product extends StatelessWidget {
  final prodcut_nm;
  final prodcut_pic;
  final prodcut_old;
  final prodcut_new;

  formal_product ({
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

