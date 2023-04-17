import 'package:alibali/ApparenceGenerale/Style/style.dart';
import 'package:flutter/material.dart';



Container contenuMsBox(String image, String bReponse, String explication, String situation, BuildContext context) {
      return Container(
              height: 350,
              width: 300,
                child: Stack(
                  children: [
                    // l'ombre
                    Container(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    ListView(
                      children: [

                      // container de l'image
                        Center(
                          child: Container(
                              margin: EdgeInsets.only(top:20),
                              height:200,
                              width:150,
                              //color: Colors.yellow,
                              child: Image.asset(image,fit: BoxFit.fill,)
                          ),
                        ),

                      // container de l'explication
                        Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(padding: EdgeInsets.all(15),margin: EdgeInsets.only(top:10),child: text(bReponse, 20, Colors.white)),
                                Container(padding: EdgeInsets.all(15),margin: EdgeInsets.only(top:10,bottom:5),child: Center(child: text2(explication, 20, Colors.white,TextAlign.left))),
                                
                                InkWell(
                                  child: Container(
                                      margin: EdgeInsets.only(bottom:10),
                                      decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(width:3,color: Colors.yellow)
                                      ),
                                      width: 150,
                                      height: 50,
                                      child: Center(child: text(situation,20,Colors.white)),
                                  ) ,
                                onTap: (){
                                  Navigator.pop(context);
                                },
                              )
                            ],
                                
                          ), 
                        )
                      ],
                    ),
                  ],
                ),
            );
    }