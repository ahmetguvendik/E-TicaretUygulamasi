import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'catagories.dart';

void main() {
  runApp(MaterialApp(home:(MyApp())));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 40),
                 child: Text("ANA SAYFA",style: TextStyle(color: Colors.black,fontSize: 32,fontWeight: FontWeight.bold),),
               ),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 16),
                 child: Container(
                  width: double.infinity,
                   decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(6)),color: Colors.blue ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Speaker",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                              Text("300 TL",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Image.asset("images/bluetooth-hoparlor-kablosuz-speaker-fm-sd-aux-usb-giris-tg117-kc6518402-2-5ebc7402560142a8a9e3c9c1b4f38be0.jpg",height: 150,width: 150,),
                        )
                      ],
                    ),
                 ),
               ),
               SizedBox(height: 30,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 16),
                 child: SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Column(
                           children: [
                             Container(
                               decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue,),
                               child: Padding(
                                 padding: const EdgeInsets.all(24.0),
                                 child: Icon(Icons.menu,size: 20,color: Colors.white,),
                               ),
                             ),
                             SizedBox(height: 8,),
                             ElevatedButton(onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));
                             }, child: Text("KATAGORİ",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),))]),
                       SizedBox(width: 5,),
                       Column(
                           children: [
                             Container(
                               decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue,),
                               child: Padding(
                                 padding: const EdgeInsets.all(24.0),
                                 child: Icon(Icons.star,size: 20,color: Colors.white,),
                               ),
                             ),
                             SizedBox(height: 8,),
                             ElevatedButton(onPressed: (){}, child: Text("FAVORİLER",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),))]),
                       SizedBox(width: 5,),
                       Column(
                           children: [
                             Container(
                               decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue,),
                               child: Padding(
                                 padding: const EdgeInsets.all(24.0),
                                 child: Icon(Icons.card_giftcard,size: 20,color: Colors.white,),
                               ),
                             ),
                             SizedBox(height: 8,),
                             ElevatedButton(onPressed: (){}, child: Text("HEDİYELER",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),))]),
                       SizedBox(width: 5,),
                       Column(
                           children: [
                             Container(
                               decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue,),
                               child: Padding(
                                 padding: const EdgeInsets.all(24.0),
                                 child: Icon(Icons.people,size: 20,color: Colors.white,),
                               ),
                             ),
                             SizedBox(height: 8,),
                             ElevatedButton(onPressed: (){}, child: Text("İNDİRİMLER",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),))]),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 30,),
               Center(child: Text("ÜRÜNLER",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),)),
               SizedBox(height: 30,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Katagori(images: "images/telefon.jpg", text: 'AKILLI TELEFONLAR',),
                   Katagori(images:"images/monitör.jpg" ,text: "MONİTÖRLER",)
                 ],
               )
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

class Katagori extends StatelessWidget {
  String text;
  String images;
  Katagori({required this.text,required this.images});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(images,height: 150 ,width: 150,),
        Text(text,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
      ],
    );
  }
}


