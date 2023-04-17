import 'package:alibali/ApparenceGenerale/Style/style.dart';
import 'package:flutter/material.dart';


Container msgboxPage2(String titre, List<Widget> listDeChoix) {
      return Container(
                  width:300,
                  height:450,
                  child: Column(
                    children:[
                
                // le titre
                  Container(
                  margin: EdgeInsets.only(bottom:5),
                   height: 30,
                   width: 350,
                   child: Center(
                     child: text(titre, 25, Colors.amber)
                   ),
                  ),

            // la barre sous le titre
                  ligneBlance(200),
            // container des options 
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(bottom:15),
                      height: 300,
                      width: 250,
                      child: ListView(
                        children: listDeChoix,
                      ),
                      ),
                    ),
                  ]
                ),
              );
    }
