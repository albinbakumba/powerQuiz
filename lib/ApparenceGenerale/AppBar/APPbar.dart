import 'package:alibali/ApparenceGenerale/Leadding.dart';
import 'package:alibali/ApparenceGenerale/Style/style.dart';
import 'package:alibali/Drawer/Apropos.dart';
import 'package:flutter/material.dart';


AppBar appbar(BuildContext context,String titre) {
     return AppBar(
        backgroundColor: Colors.transparent,
      
      //boutom arriere
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.amber,
              size: 35,
              ),
        onPressed:(){
          Navigator.pop(context);
            }),

      // la partie titre
        title: Text(titre) ,
        centerTitle: true,
       // centerTitle: true,

      //la partie action pour le pop menu
        actions: [
           PopupMenuButton(
             color: Colors.greenAccent,
                icon: Icon(
                    Icons.clear_all,
                    size: 35,
                    color: Colors.amber,
                    ),
                elevation: 10,
                onSelected:(value){
                  if (value==1){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Apropos()));
                  }
                else if (value==2) {
                  print("2");
                }
                },
                itemBuilder: (BuildContext context){
                    return[
                      PopupMenuItem(child: text("Aide",20,Colors.white),value: 2,),
                    ];
                }
                
                )  
      ],
    );
   }



// ************************************Appbar simple***************************************************///


AppBar appbarQuestion(BuildContext context,String titre) {
     return AppBar(
        backgroundColor: Colors.transparent,
      
      //boutom arriere
        leading: Leadding(),


      // la partie titre
        title: Text(titre) ,
        centerTitle: true,
       // centerTitle: true,

      //la partie action pour le pop menu
        actions: [
           PopupMenuButton(
             color: Colors.greenAccent,
                icon: Icon(
                    Icons.clear_all,
                    size: 35,
                    color: Colors.amber,
                    ),
                elevation: 10,
                onSelected:(value){
                  if (value==1){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Apropos()));
                  }
                else if (value==2) {
                  print("2");
                }
                else if (value==3) {
                  
                }


                },
                itemBuilder: (BuildContext context){
                    return[
                      PopupMenuItem(child: text("Aide",20,Colors.white),value: 2,),
                    ];
                }
                
                )  
      ],
    );
   }