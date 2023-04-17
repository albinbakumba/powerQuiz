import 'package:alibali/Drawer/Apropos.dart';
import 'package:flutter/material.dart';


  Container page2Drawer(BuildContext context) {
      return Container(
         width: 200,
          color: Colors.greenAccent,
          child: ListView(
              children: [
                 Center(
                   child: Card(
                     color: Colors.black.withOpacity(0.7),
                     margin: EdgeInsets.only(top:10,bottom:10),
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(100)
                      ), 
                      child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            border: Border.all(color:Colors.amber,width:3),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("img/60.png"),
                              fit: BoxFit.cover
                              ),
                            ) 
            ),
              ),
                 ),

                Card(child: ListTile(title: Text("A propos",style:TextStyle(fontSize:22,color: Colors.white)),
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Apropos()));
                    },)
                    ,color: Colors.greenAccent,
                    elevation: 10,),
                Padding(padding: EdgeInsets.all(2)),
                Card(child: ListTile(title: Text("Aide",style:TextStyle(fontSize:22,color: Colors.white)),onTap:(){},),color: Colors.greenAccent,elevation: 10,),
                Padding(padding: EdgeInsets.all(2)),
              ],
            ),
        );
    }