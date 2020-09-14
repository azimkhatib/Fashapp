import 'package:flutter/material.dart';
import 'package:onlineshop/prod/dress.dart' ;
import 'package:onlineshop/componets/horizontal_listview.dart';
import 'package:onlineshop/prod/shoes.dart';
import 'package:onlineshop/prod/tshirt.dart';
import 'package:onlineshop/prod/formal.dart';
import 'package:onlineshop/prod/infrml.dart';
import 'package:onlineshop/prod/pant.dart';
class HorizontalList extends StatelessWidget {
//  const HorizontalList({
//    Key key,
//  }) : super(key: key)

//  final horizontal_list_title;
//  final horizontal_list_picture;
//
//  HorizontalList({
//    this.horizontal_list_title,
//    this.horizontal_list_picture
//});
  const HorizontalList({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {


//    var catagory_list = [
//      {
//        "title" : "T-Shirt",
//        "picture" :  "assets/1.png",
//      },
//      {
//        "title" : "Shoes",
//        "picture" :  "assets/2.png",
//      },
//      {
//        "title" : "Dress",
//        "picture" :  "assets/3.png",
//      },
//      {
//        "title" : "In-Formal",
//        "picture" :  "assets/4.png",
//      },
//      {
//        "title" : "Formal",
//        "picture" :  "assets/5.png",
//      },
//      {
//        "title" : "Pants",
//        "picture" :  "assets/6.png",
//      },
//      {
//        "title" : "Jwellery",
//        "picture" :  "assets/7.png",
//      },
//    ];

    return Container(
      height:  100.0,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
   child: Row(
      children: <Widget>[
    Category(
      image_location: "assets/1.png",
      image_caption: "T-Shirt",
      press: (){
        Navigator.of(context)
            .push(MaterialPageRoute(
          builder: (context) => tshirt()
        ));
      },
    ),
    Category(
      image_location: "assets/2.png",
      image_caption: "Shoes",
      press: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Shoes()),
        );
      },
    ),
    Category(
      image_location: "assets/3.png",
      image_caption: "Dress",
      press: (){
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => dresss()),
        );
      },

    ),
    Category(
      image_location: "assets/4.png",
      image_caption: "Formal",
      press: (){
        Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => Formal()),
        );
      },
    ),
    Category(
      image_location: "assets/5.png",
      image_caption: "In-Formal",
      press: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder:
              (context) => formal()),
        );
      },
    ),
    Category(
      image_location: "assets/6.png",
      image_caption: "Pants",
      press: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder:
              (context) => Pant()),
        );
      },
    ),
//    Category(
//      image_location: "assets/7.png",
//      image_caption: "Jwllery",
//      press: (){},
//    ),
//          Category(
//            image_location: "assets/jwellry.png",
//            image_caption: "Jwellery",
//          ),
  ],
),
        ),
            );
  }
}
class Category extends StatelessWidget {




  final String image_location;
  final String image_caption;
  final Function press;
  final Function onTap;
  Category({
    Key key,
    this.image_caption,
    this.image_location,
    this.press,
    this.onTap,
}): super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap:  press,
        child: Container(
          width: 100.0,
          child: InkWell(
            child: ListTile(
              title: Image.asset(image_location,
              height: 80.0,
              width: 100,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

