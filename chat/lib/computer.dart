import 'package:chat/catagories.dart';
import 'package:chat/detay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Computer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){Navigator.pop(context);},),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("BİLGİSAYARLAR",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              ),
               Row(
                 children: [
                   MyNotebook(title: "HUAWEİ MATEBOOK",price: "999 DOLAR",images: "images/huawei.jpg",),
                   MyNotebook(title: "LENOVO İDEAPAD", images: "images/lenovoideapad.jpg", price: "USD 999")
                 ],
               ),
              Row(
                children: [
                  MyNotebook(title: "MİCROSOFT LAPTOP",price: "999 DOLAR",images: "images/microsoft.jpg",),
                  MyNotebook(title: "MONSTER LAPTOP", images: "images/monster.png", price: "USD 999")
                ],
              ),
              Row(
                children: [
                  MyNotebook(title: "MSİ LAPTOP",price: "999 DOLAR",images: "images/msi.jpg",),
                  MyNotebook(title: "XİAOMİ LAPTOP", images: "images/sayomi.jpg", price: "USD 999")
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.home)),
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_basket)),
            IconButton(onPressed: (){}, icon: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}

class MyNotebook extends StatelessWidget {
    String images;
    String title;
    String price;

   MyNotebook({required this.title,required this.images,required this.price});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GestureDetector(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Detay(text: title,images: images,price: price,)));},
          child: Container(
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(8))),
             child: Column(
               children: [
                 Padding(
                   padding:  EdgeInsets.only(top: 20),
                   child: Image.asset(images,height: 100,width: 100,),
                 ),
                 SizedBox(height: 40,),
                 Column(
                   children: [
                     Text(title),
                     SizedBox(height: 5,),
                     Text(price)
                   ],
                 )
               ],
             ),
          ),
        ),
      ),
    );
  }
}
