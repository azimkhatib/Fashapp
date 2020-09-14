import 'package:flutter/material.dart';
import 'package:onlineshop/pages/product_details.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
       "picture": "assets/blezer.jpg",
       "old price": 2900,
       "price" : 1699,

  },
  {
  "name": "Casual Trousers",
  "picture": "assets/beard.jpg",
  "old price": 2100,
  "price" : 1499,

  },
    {
      "name": "Formal",
      "picture": "assets/formal.jpg",
      "old price": 1500,
      "price" : 899,

    },
    {
      "name": "Kurties",
      "picture": "assets/kadak.jpg",
      "old price": 2499,
      "price" : 1899,

    },
    {
      "name": "In-formal",
      "picture": "assets/pants.jpg",
      "old price": 1400,
      "price" : 700,

    },
    {
      "name": "Jumpsuits",
      "picture": "assets/seat.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "Dress",
      "picture": "assets/kash.jpg",
      "old price": 2100,
      "price" : 1299,

    },
    {
      "name": "Wedding",
      "picture": "assets/maal.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "Western",
      "picture": "assets/white.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "Casual Shirts",
      "picture": "assets/vikings.jpg",
      "old price": 1200,
      "price" : 599,

    },
    {
      "name": "Shoes",
      "picture": "assets/shh.jpg",
      "old price": 1000,
      "price" : 499,

    },
    {
      "name": "Skirts",
      "picture": "assets/sara.jpg",
      "old price": 1399,
      "price" : 799,

    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context , int index)
        {
          return Single_prod(
            prod_name:  product_list[index]["name"],
            prod_picture: product_list[index]["picture"],
            prod_oldprice: product_list[index]["old price"],
            prod_price: product_list[index]["price"],
          );
        });
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

