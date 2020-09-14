import 'package:flutter/material.dart';
import 'package:onlineshop/pages/product_details.dart';

class Pant extends StatefulWidget {
  @override
  _PantState createState() => _PantState();
}

class _PantState extends State<Pant> {
  var pant_list = [
    {
      "name": "Roadstar",
      "picture": "assets/pn.jpg",
      "old price": 1299,
      "price" : 799,

    },
    {
      "name": "Mott & Bow",
      "picture": "assets/pn1.jpg",
      "old price": 1000,
      "price" : 699,

    },
    {
      "name": "Paige",
      "picture": "assets/pn2.jpg",
      "old price": 1399,
      "price" : 899,

    },
    {
      "name": "Levi's",
      "picture": "assets/pn3.jpg",
      "old price": 2499,
      "price" : 1899,

    },
    {
      "name": "Ajio",
      "picture": "assets/pn4.jpg",
      "old price": 1400,
      "price" : 900,

    },
    {
      "name": "Uniqlo",
      "picture": "assets/pn5.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "Everlane",
      "picture": "assets/pn6.jpg",
      "old price": 2100,
      "price" : 1299,

    },
    {
      "name": "Rag & Bone",
      "picture": "assets/pn7.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "3Sixteen",
      "picture": "assets/pn8.jpg",
      "old price": 1400,
      "price" : 899,

    },
    {
      "name": "CR7",
      "picture": "assets/pn9.jpg",
      "old price": 1900,
      "price" : 1199,

    },
    {
      "name": "Madewell",
      "picture": "assets/pn10.jpg",
      "old price": 1499,
      "price" : 899,

    },
    {
      "name": "ARK",
      "picture": "assets/pn11.jpg",
      "old price": 1399,
      "price" : 999,

    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pants",
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: GridView.builder(
          itemCount: pant_list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
          itemBuilder: (BuildContext context , int index)
          {
            return pant_product (
              prodcut_nm: pant_list[index]["name"],
              prodcut_pic: pant_list[index]["picture"],
              prodcut_old: pant_list[index]["old price"],
              prodcut_new: pant_list[index]["price"],
            );
          } ),
    );
  }
}
class pant_product extends StatelessWidget {
  final prodcut_nm;
  final prodcut_pic;
  final prodcut_old;
  final prodcut_new;

  pant_product ({
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


