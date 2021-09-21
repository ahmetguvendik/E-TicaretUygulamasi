import 'package:chat/sepet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Detay extends StatelessWidget {
String text;
String images;
String price;
Detay({required this.text,required this.images,required this.price});

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
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(text,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                ),
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Image.asset(images)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: (){
                      Fluttertoast.showToast(
                          msg: "Ürün Sepete Eklendi",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.CENTER,
                      );

                      },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(child: Text("SEPETE EKLE",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                )
              ],
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.home)),
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Sepet(title:text ,image: images,price: price,)));
            }, icon: Icon(Icons.shopping_basket)),
            IconButton(onPressed: (){}, icon: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}
