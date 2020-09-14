import 'package:flutter/material.dart';
import 'package:onlineshop/pages/product_details.dart';

class tshirt extends StatefulWidget {
  @override
  _tshirtState createState() => _tshirtState();
}

class _tshirtState extends State<tshirt> {
  var tshirt_list = [
  {
  "name": "Nike",
  "picture": "assets/BL.jpg",
  "old price": 900,
  "price" : 699,

},
{
"name": "Roadstar",
"picture": "assets/BLshirt.jpg",
"old price": 800,
"price" : 499,

},
{
"name": "Adidas",
"picture": "assets/BLU.jpg",
"old price": 1500,
"price" : 899,

},
{
"name": "J B Fashion",
"picture": "assets/ML.jpg",
"old price": 999,
"price" : 499,

},
{
"name": "Silkova",
"picture": "assets/MLshirt.jpg",
"old price": 700,
"price" : 499,

},
{
"name": "Berryluwsh",
"picture": "assets/PR.jpg",
"old price":899,
"price" : 499,

},
{
"name": "Tishani",
"picture": "assets/WT.jpg",
"old price": 799,
"price" : 399,

},
{
"name": "Sryole",
"picture": "assets/ML.jpg",
"old price": 699,
"price" : 349,

},
//{
//"name": "Western",
//"picture": "assets/BL.jpg",
//"old price": 2100,
//"price" : 1499,
//
//},
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "T-shirt",
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: GridView.builder(
          itemCount: tshirt_list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
          itemBuilder: (BuildContext context , int index)
          {
            return tshirt_product (
              prodcut_nm: tshirt_list[index]["name"],
              prodcut_pic: tshirt_list[index]["picture"],
              prodcut_old: tshirt_list[index]["old price"],
              prodcut_new: tshirt_list[index]["price"],
            );
          } ),
    );
  }
}
class tshirt_product extends StatelessWidget {

  final prodcut_nm;
  final prodcut_pic;
  final prodcut_old;
  final prodcut_new;

  tshirt_product ({
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

