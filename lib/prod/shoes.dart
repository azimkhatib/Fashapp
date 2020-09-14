import 'package:flutter/material.dart';
import 'package:onlineshop/pages/product_details.dart';


class Shoes extends StatefulWidget {


  @override
  _ShoesState createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {


  var shoes_list = [
    {
      "name": "Spiker",
      "picture": "assets/sh.jpeg",
      "old price": 1099,
      "price" : 499,

    },
    {
      "name": "H&M",
      "picture": "assets/sh1.jpeg",
      "old price": 1799,
      "price" : 1199,

    },
    {
      "name": "Wooden",
      "picture": "assets/sh2.jpg",
      "old price": 1500,
      "price" : 899,

    },
    {
      "name": "HRX",
      "picture": "assets/sh3.jpg",
      "old price": 1499,
      "price" : 999,

    },
    {
      "name": "Adidas",
      "picture": "assets/sh4.jpg",
      "old price": 1400,
      "price" : 1000,

    },
    {
      "name": "Puma",
      "picture": "assets/sh5.jpg",
      "old price": 1299,
      "price" : 799,

    },
    {
      "name": "Wolf",
      "picture": "assets/sh6.jpg",
      "old price": 1900,
      "price" : 1299,

    },
    {
      "name": "Red Cheif",
      "picture": "assets/sh7.jpg",
      "old price": 2199,
      "price" : 1499,

    },
    {
      "name": "Allen Solly",
      "picture": "assets/sh8.jpg",
      "old price": 2449,
      "price" : 1899,

    },

//    {
//      "name": "Casual Shirts",
//      "picture": "assets/drs10.jpg",
//      "old price": 1200,
//      "price" : 599,
//
//    },
//    {
//      "name": "Shoes",
//      "picture": "assets/drs55.jpg",
//      "old price": 1000,
//      "price" : 499,
//
//    },
//    {
//      "name": "Formal",
//      "picture": "assets/drs3.jpg",
//      "old price": 1500,
//      "price" : 899,
//
//    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shoes",
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: GridView.builder(
        itemCount: shoes_list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ),
          itemBuilder: (BuildContext context , int index)
          {
               return shoes_prod(
                 prodcut_nm: shoes_list[index]["name"],
                 prodcut_pic: shoes_list[index]["picture"],
                 prodcut_old: shoes_list[index]["old price"],
                 prodcut_new: shoes_list[index]["price"],
               );
          } ),
    );
  }
}
class shoes_prod extends StatelessWidget {

  final prodcut_nm;
  final prodcut_pic;
  final prodcut_old;
  final prodcut_new;

  shoes_prod ({
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

