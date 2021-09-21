import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sepet extends StatelessWidget {
  String title;
  String image;
  String price;
  Sepet({required this.title,required this.price,required this.image});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){Navigator.pop(context);},),
        ),
        body: Column(
          children: [
            Card(
              child: Row(
                children: [
                  Image.asset(image,width: 50,height: 50,),
                  SizedBox(width: 5,),
                  Text(title),
                  SizedBox(width: 15,),
                  Text(price)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
