import 'package:flutter/material.dart';
import 'package:onlineshop/pages/product_details.dart';
class dresss extends StatefulWidget {
  @override
  _dresssState createState() => _dresssState();
}

class _dresssState extends State<dresss> {

  var dress_list = [
    {
      "name": "BIBA",
      "picture": "assets/drs.jpg",
      "old price": 4999,
      "price" : 3699,

    },
    {
      "name": "Levis",
      "picture": "assets/drs2.jpg",
      "old price": 1499,
      "price" : 999,

    },
    {
      "name": "FABINDIA",
      "picture": "assets/drs3.jpg",
      "old price": 4900,
      "price" : 3899,

    },
    {
      "name": "AURELIA",
      "picture": "assets/drs4.png",
      "old price": 4499,
      "price" : 3899,

    },
    {
      "name": "Global Desi",
      "picture": "assets/drs5.jpeg",
      "old price": 2900,
      "price" : 2000,

    },
    {
      "name": "WESTSIDE",
      "picture": "assets/drs6.jpg",
      "old price": 1400,
      "price" : 899,

    },
    {
      "name": "Kazo",
      "picture": "assets/drs7.jpg",
      "old price": 2100,
      "price" : 1299,

    },
    {
      "name": "MADAME",
      "picture": "assets/drs8.jpg",
      "old price": 1699,
      "price" : 1199,

    },
    {
      "name": "Chumbak",
      "picture": "assets/drs9.jpg",
      "old price": 1800,
      "price" : 1299,

    },
    {
      "name": "Casual Shirts",
      "picture": "assets/drs10.jpg",
      "old price": 1900,
      "price" : 1299,

    },
    {
      "name": "Manyavar",
      "picture": "assets/drs55.jpg",
      "old price": 4299,
      "price" : 3199,

    },
    {
      "name": "Spice",
      "picture": "assets/drs3.jpg",
      "old price": 3999,
      "price" : 2799,

    },
  ];



  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       backgroundColor: Colors.red,
       title: Text(
         "Dress"
       ),
     ),
     body: GridView.builder(
       itemCount: dress_list.length,
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 2,
       ),
       itemBuilder: (BuildContext context , int index)
       {
         return Single_prod(
           prod_name:  dress_list[index]["name"],
           prod_picture: dress_list[index]["picture"],
           prod_oldprice: dress_list[index]["old price"],
           prod_price: dress_list[index]["price"],
         );
       }),
   );
  }
}
class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_oldprice;
  final prod_price;

  Single_prod(
      {
        this.prod_name,
        this.prod_picture,
        this.prod_oldprice,
        this.prod_price
      }
      );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text("Azim"),
        child: Material(
          child: InkWell(
            //passing value product detail
            onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetails(
              prod_detail_name: prod_name,
              prod_detail_price: prod_price,
              prod_detail_oldprice: prod_oldprice,
              prod_detail_picture: prod_picture,
            ))),
            child: GridTile(
              footer: Container(
                  color: Colors.white60,
                  child:Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(prod_name,
                            style:TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0
                            )),
                      ),
                      Text("\Rs ${prod_price}",
                          style: TextStyle(
                            color:  Colors.red,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    ],
                  )
              ),
              child: Image.asset(prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}