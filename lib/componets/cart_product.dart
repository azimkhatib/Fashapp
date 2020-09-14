import 'package:flutter/material.dart';
class Cart_product extends StatefulWidget {
  @override
  _Cart_productState createState() => _Cart_productState();
}

class _Cart_productState extends State<Cart_product> {

  var Product_on_the_cart = [
    {
      "name": "Casual Trousers",
      "picture": "assets/beard.jpg",
      "price" : 1499,
      "Quantity" : 1,
      "Size" : "M",
      "Color" : "Blue"

    },
    {
      "name": "Kurtis",
      "picture": "assets/kadak.jpg",
      "price" : 1899,
      "Quantity" : 1,
      "Size" : "L",
      "Color" : "Red"

    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Product_on_the_cart.length,
        itemBuilder: (context, index){
        return Singli_cart_product(
          cart_prod_name: Product_on_the_cart[index]["name"],
          cart_prod_color:Product_on_the_cart[index]["Color"] ,
          cart_prod_picture: Product_on_the_cart[index]["picture"],
          cart_prod_price: Product_on_the_cart[index]["price"],
          cart_prod_qty: Product_on_the_cart[index]["Quantity"],
          cart_prod_size: Product_on_the_cart[index]["Size"],
        );
        },
    );
  }
}
class Singli_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;
  
  Singli_cart_product({
    this.cart_prod_color,
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_qty,
    this.cart_prod_size,
});
  
  
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //=======LEading section
        leading: Image.asset(cart_prod_picture,
          width: 80,
          height: 80,
        ),
        //Title section
        title: Text(cart_prod_name),
        //=======SUBTITLE SECTION
        subtitle: Column(
          children: <Widget>[
            //inside COLUM
            Row(
              children: <Widget>[
                //sIZE OF PRODUCT
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(cart_prod_size,
                  style: TextStyle(
                    color: Colors.red
                  ),),
                ),
                //=========product color=========
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child:  Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(cart_prod_color,
                      style: TextStyle(
                          color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),),
                ),



              ],
            ),
            //========product PRICE==========
            Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("\Rs ${cart_prod_price}",
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
              ),
            )
          ],
        ),
        //  HERE I WAS STUCK OVERVIEW================
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: <Widget>[
               IconButton(icon: Icon(Icons.arrow_drop_up,size: 60.0,), onPressed: (){}),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "$cart_prod_qty",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,

                ),),
              ),
               IconButton(icon: Icon(Icons.arrow_drop_down,size: 60.0,), onPressed: (){}),
            ],
          ),
        ),
//        trailing: Column(
//          children: <Widget>[
//            IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){},),
//      Text("$cart_prod_qty"),
////      IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){},),
//
////            IconButton(
////              icon: Icon(Icons.arrow_drop_down),
////              onPressed: (){},
////            )
//          ],
//        ),
      ),
    );
  }

}

