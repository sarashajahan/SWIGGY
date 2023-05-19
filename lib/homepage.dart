
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children: [SizedBox(height: 600,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context,index){
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 100,
            color: Colors.green,
           child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Padding(
                 padding: const EdgeInsets.only(left:10),
                 child: Text(
                  (index+1).toString(),style: TextStyle(color:Colors.white,fontSize: 50),
                 ),
               ),
               SizedBox(width:130),
               CircleAvatar(radius: 30,backgroundColor: Colors.white,),
               SizedBox(width:130),
               Text("hi",style: TextStyle(color:Colors.white,fontSize: 40)),              
             ],
           ),
          ),
        );
      }))],)
    );
  }
}