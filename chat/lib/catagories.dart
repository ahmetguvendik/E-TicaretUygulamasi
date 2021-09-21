import 'package:chat/computer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
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
                child: Text("Kategoriler",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding:  EdgeInsets.all(16.0),
                child: Card(
                  child:Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(6)),boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: Offset(0,4),
                      )]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 14,vertical: 14),
                          child: Text("ALL",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_outlined))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(16.0),
                child: Card(
                  child:Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(6)),boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: Offset(0,4),
                      )]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 14,vertical: 14),
                          child: Text("BİLGİSAYAR",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Computer()));
                        }, icon: Icon(Icons.navigate_next_outlined))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(16.0),
                child: Card(
                  child:Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(6)),boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: Offset(0,4),
                      )]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 14,vertical: 14),
                          child: Text("GİYİM",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_outlined))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(16.0),
                child: Card(
                  child:Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(6)),boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: Offset(0,4),
                      )]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 14,vertical: 14),
                          child: Text("AKILLI TELEFON",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_outlined))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(16.0),
                child: Card(
                  child:Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(6)),boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: Offset(0,4),
                      )]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 14,vertical: 14),
                          child: Text("AKILLI ÜRÜNLER",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_outlined))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(16.0),
                child: Card(
                  child:Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(6)),boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: Offset(0,4),
                      )]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 14,vertical: 14),
                          child: Text("HOPARLÖRLER",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_outlined))
                      ],
                    ),
                  ),
                ),
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