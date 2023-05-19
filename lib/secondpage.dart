import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiggycloneapp/homepage.dart';


class Secondpage extends StatefulWidget {
  const Secondpage({super.key, required String title});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Other",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 29),),
       iconTheme: IconThemeData(color: Colors.black),
      actions: [IconButton( icon: Icon(Icons.local_offer,color:Colors.black,size: 28,), onPressed: () { },),
      //Align(alignment:Alignment.center,//
      Padding(
            padding: EdgeInsets.only(top: 16.0, right: 15, left: 5),child:Text("Offer",style: TextStyle(color:Colors.black,fontSize: 25,fontWeight: FontWeight.bold))),],
    
      backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
           children:[Container(
        height:150,
        width:double.infinity,
        padding:EdgeInsets.only(top:15, right: 15, left: 15),
       child:Column(children:
       [ Container( 
        decoration: BoxDecoration(color: Colors.white,border: Border(left:BorderSide(width:10,color:Color.fromARGB(255, 249, 74, 26),))),
        child:Column(children:[Text("We are now deliverying food groceries and other essentials.",style:TextStyle(color:Colors.black,fontSize: 25,fontWeight: FontWeight.bold) ,textAlign: TextAlign.center,),Text(
              "Food & Genie service (Mon-Sat) - 6:00 am to 9:00 pm. Groceries & Meat (Mon-Sat) - 6:00 am to 6:00 pm. Dairy (Mon-Sat) - 6:00 am to 6:00 pm (Sun) - 6:00 am to 12:00 pm",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,)] ,))]
        ),
      ),
      //Padding(),
      Container(
            height: 180,
              width: 500,
              decoration: BoxDecoration(color: Color.fromARGB(255, 249, 74, 26),borderRadius: BorderRadius.circular(20)),
              child:Column( 
                children:[Stack(        
               children: [
                Positioned.fill(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 500,
            height: 50,
            decoration: BoxDecoration(color: Color.fromARGB(255, 227, 55, 3),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
            child:Row(children: [ SizedBox(width:10),Text("view all",style:(TextStyle(color:Colors.white,fontSize: 23))),InkWell(child: IconButton( icon: Icon(Icons.arrow_forward,color:Colors.white,size: 28,), onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(title: 'hi',),),); },)),],)
          ),
        ),
      ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Positioned(
       bottom:-60,child:
      Container(
        padding: EdgeInsets.only(left:10,bottom:80,top:10),
        child: Column(
          children: [
            Text('Restaurants',style:TextStyle(color:Colors.white,fontSize: 40,fontWeight: FontWeight.bold)),
            SizedBox(height: 10,),
            Text("No-contact delivery availabe",style:TextStyle(color:Colors.white,fontSize: 18)),
          ],
        ),
      ),
      ),
       Positioned(
        bottom:-49,child:
      Container( 
        //padding: EdgeInsets.only(right:15),
          child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/1.jpeg'),
          radius: 89.5,),
        )
       ),
    ],
  ), 
                ],
              ), 
                ],
              ),
      ),
        SizedBox(height:20),
        Container(
          height:250,
          child:
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
           // Padding(padding:EdgeInsets.only(top:20)),
        children:[ Container(
        height:316,
        width:120,child:  
        Column(
          children: [
            Container(
                  height:180,width:120,decoration: BoxDecoration(color:Color.fromARGB(255, 249, 74, 26),borderRadius:BorderRadius.circular(20),image:DecorationImage(image:AssetImage('assets/images/1.jpeg'),fit: BoxFit.cover)),
                  child:Column(
                    children: [
                       Container(height: 50,width:120,decoration: BoxDecoration(color:Color.fromARGB(255, 249, 74, 26),borderRadius:BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20))),
                      child: Center(child:Text("Genie",style:TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold))),),
                    ],
                  ),),
             SizedBox(height:15),
              Expanded(child:Text("Anything you need,delivered",style:TextStyle(color: Colors.black,fontSize: 19),textAlign: TextAlign.center,),)
                ],
        ),),
            SizedBox(width:12),
            Container(
        height:316,
        width:120,child:
            Column(
              children: [
                Container(
                  height:180,width:120,decoration: BoxDecoration(color:Color.fromARGB(255, 249, 74, 26),borderRadius:BorderRadius.circular(20),image:DecorationImage(image:AssetImage('assets/images/2.jpg'),fit: BoxFit.cover)),
                   child:Column(children: [Container(height: 50,width:120,decoration: BoxDecoration(color:Color.fromARGB(255, 249, 74, 26),borderRadius:BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20))),
                   child:Center(child:Text("Grocery",style:TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),)],),),
                   SizedBox(height:15),
              Expanded(child: Text("Essentials delivered in 2 Hrs",style:TextStyle(color: Colors.black,fontSize: 19),textAlign: TextAlign.center),),
              ],
            ),),
             SizedBox(width:12),
            Container(
             height:316,
             width:120,child:
            Column(
              children: [
                Container(
                  height:180,width:120,decoration: BoxDecoration(color:Color.fromARGB(255, 249, 74, 26),borderRadius:BorderRadius.circular(20),image:DecorationImage(image:AssetImage('assets/images/4.jpeg'),fit: BoxFit.cover)),
                   child:Column(children: [Container(height: 50,width:120,decoration: BoxDecoration(color:Color.fromARGB(255, 249, 74, 26),borderRadius:BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20))),
                   child:Center(child:Text("Meat",style:TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold))),)],),),
                   SizedBox(height:15),
              Expanded(child:Text("Fresh meat delivered safe",style:TextStyle(color: Colors.black,fontSize: 19,),textAlign: TextAlign.center),),
              ],
            ),),],
       ),),
       Container(width:double.infinity,
       child: Row(children: [IconButton( icon: Icon(Icons.thumb_up,color:Colors.black,size: 28,), onPressed: () {  },),SizedBox(width:10),Text("Top Picks For You",style:TextStyle(color:Colors.black,fontSize: 32,fontWeight: FontWeight.bold)),SizedBox(height:100,width:100)],)) ,
       Column(children: [SizedBox(height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (BuildContext context,index){
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height:120,width:120,decoration: BoxDecoration(color:Color.fromARGB(255, 249, 74, 26),image:DecorationImage(image:AssetImage('assets/images/1.jpeg'),fit: BoxFit.cover)),
                  child:Column(
                    children: [
                      // Container(height: 50,width:50,decoration: BoxDecoration(color:Color.fromARGB(255, 249, 74, 26),borderRadius:BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20))),
                      //child: Center(child:Text("Genie",style:TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold))),
                     // ),
                    ],
                  ),
          ),
        );
      }))],)
       ],),
        ),
      drawer:Drawer(shadowColor: Colors.black,),
      );
  }
}  