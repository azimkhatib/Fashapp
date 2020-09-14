import 'package:flutter/material.dart';
import 'package:onlineshop/fullimg/fullscrn.dart';

class ProductDetails extends StatefulWidget {
  final prod_detail_name;
  final prod_detail_picture;
  final prod_detail_oldprice;
  final prod_detail_price;

  ProductDetails({
    this.prod_detail_name,
    this.prod_detail_picture,
    this.prod_detail_price,
    this.prod_detail_oldprice
});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => FullScren(
                      fullscrn_picture: widget.prod_detail_picture,
                    ))),
                      child: Image.asset(widget.prod_detail_picture)),
                  //child class thise is bse class bcz extend previous class make new wideget
                ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.prod_detail_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:  18.0,
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("\Rs${widget.prod_detail_oldprice}",
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                        ),
                      ),
                      Expanded(
                        child: Text("\Rs${widget.prod_detail_price}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Size"),
                        content: Text("Choose the size"),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: Text("Close"),
                          )
                        ],
                      );
                    }
                    );
                  },
                  color: Colors.white70,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Color"),
                            content: Text("Choose a color"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              )
                            ],
                          );
                        }
                    );
                  },
                  color: Colors.white70,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Quantity"),
                            content: Text("How many you want"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              )
                            ],
                          );
                        }
                    );
                  },
                  color: Colors.white70,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Buy")
                      ),
              ),
              IconButton(icon: Icon(Icons.add_shopping_cart),color: Colors.red, onPressed: (){}),
              IconButton(icon: Icon(Icons.favorite_border),color: Colors.red, onPressed: (){}),
                    ],
                  ),
          Divider(),

          ListTile(
            title: Text("Product details"),
            subtitle: Text(
                "Navy blue checked slim-fit formal suit, has a notched lapel, single-breasted with double button closures, long sleeves, two flap pockets, one chest welt pocket, an attached lining and a double vented back hemNavy blue mid-rise checked trousers, has a zip fly with a button and a hook-and-bar closure, four pockets, a waistband with belt loops, adjustable hems",
            ),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product name",
                style: TextStyle(
                  color: Colors.grey,
                ),),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(widget.prod_detail_name),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product brand",
                  style: TextStyle(
                    color: Colors.grey,
                  ),),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Brand X"),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product condition",
                  style: TextStyle(
                    color: Colors.grey,
                  ),),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("New"),
              ),
            ],
          ),
          //smiler product
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Similer products"),
          ),
          Container(
            height: 360.0,
            child: Smilier_products(),
          )
            ],
          )
      );
  }
}
class Smilier_products extends StatefulWidget {
  @override
  _Smilier_productsState createState() => _Smilier_productsState();
}

class _Smilier_productsState extends State<Smilier_products> {
  var product_list = [
    {
      "name": "Casual",
      "picture": "assets/kadak.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "Casual",
      "picture": "assets/pants.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "Casual",
      "picture": "assets/seat.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "Casual",
      "picture": "assets/vikings.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "Casual",
      "picture": "assets/shh.jpg",
      "old price": 2100,
      "price" : 1499,

    },
    {
      "name": "Casual",
      "picture": "assets/sara.jpg",
      "old price": 2100,
      "price" : 1499,

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
          return Similer_Single_prod (
            prod_name:  product_list[index]["name"],
            prod_picture: product_list[index]["picture"],
            prod_oldprice: product_list[index]["old price"],
            prod_price: product_list[index]["price"],
          );
        });
  }
}
class Similer_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_oldprice;
  final prod_price;

  Similer_Single_prod (
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


