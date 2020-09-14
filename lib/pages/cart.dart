import 'package:flutter/material.dart';
//my import
import 'package:onlineshop/componets/cart_product.dart';
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
//    resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text(
          "Shopping cart",
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed:  () {},
          ),
        ],
      ),
      body: Cart_product(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Total:"),
                subtitle: Text("\Rs 3398"),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: (){},
                child: Text(
                    "Check out",
                style: TextStyle(
                  color: Colors.white,
                ),),
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
