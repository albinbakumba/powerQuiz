

import 'package:alibali/ApparenceGenerale/AppBar/APPbar.dart';
import 'package:alibali/ApparenceGenerale/Style/style.dart';
import 'package:alibali/Drawer/remercement.dart';
import 'package:flutter/material.dart';


class Apropos extends StatefulWidget {
  const Apropos({ Key key }) : super(key: key);
  @override
  _AproposState createState() => _AproposState();
}

class _AproposState extends State<Apropos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/60.png"),
            fit: BoxFit.fill
            ),
        ),
      child: Scaffold(
         backgroundColor: Colors.black.withOpacity(0.7), // couleur du backGround

        appBar: appbar(context,"A propos"),
        body: Stack(
          children:[
            arrierePlanContainer(),
            Card(
              elevation: 30,
              color: Colors.transparent,
              child: Scrollbar(
                child: ListView(
                  children: [
                  Column(
                    children:[
                    
                    // ligne 1
                      Container(
                        padding: EdgeInsets.only(left:5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            // container du profil
                              Container(
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(15),
                                 color: Colors.white30,
                              ),
                              width: 150,
                              height: 200,
                              child: Image.asset("img/alprofil.JPG",fit: BoxFit.cover,)
                              ),

                            // container de detaille
                              Container(
                                decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(15),
                                 color: Colors.white30,
                              ),
                                margin: EdgeInsets.only(left:5),
                                width: 190,
                                height: 200,
                                child: Column(
                                  children:[
                                    // container du titre
                                    Container(
                                      height: 30,
                                      child: text("identite",25, Colors.white)
                                    ),
                                  // ligne blanche
                                    Container(
                                      margin: EdgeInsets.all(3),
                                      color: Colors.white,
                                      height: 3,
                                      width: 115,
                                    ),
                                    // container de nom et autre right: null,
                                    Center(
                                      child: Container(
                                        
                                        padding: EdgeInsets.only( left:15,top: 10),
                                        child: Column(
                                          children:[
                                            Row(
                                            children: [
                                              text("Nom :", 17, Colors.white),
                                              text(" Bakumba", 17, Colors.white)
                                            ]
                                            ),
                                            Row(
                                            children: [
                                              text("post-nom :", 20, Colors.white),
                                              text(" Bonte", 20, Colors.white)
                                            ]
                                            ),
                                            Row(
                                            children: [
                                              text("Prenom :", 20, Colors.white),
                                              text(" Albin", 20, Colors.white)
                                            ]
                                            ),
                                            Row(
                                            children: [
                                              text("ne le :", 20, Colors.white),
                                              text(" 21/01/****", 20, Colors.white)
                                            ]
                                            ),
                                             Row(
                                            children: [
                                              text("Lieu :", 20, Colors.white),
                                              text(" Kinshasa", 20, Colors.white)
                                            ]
                                            )
                                          ]
                                          
                                        ),
                                      ),
                                    )
                                  ]
                                ),
                              )
                            ],
                          ),
                      ),

                      // ligne 2
                      Container(
                        margin: EdgeInsets.only(top:10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(15),
                                 color: Colors.blueGrey,
                              ),
                        
                          width: 400,
                          child: Column(children: [
                            Container(
                                      height: 30,
                                      child: text("Etudes",25, Colors.white)
                                    ),
                                    // ligne blache
                                    Container(
                                      margin: EdgeInsets.only(bottom:10,top:5),
                                      color: Colors.white,
                                      height: 3,
                                      width: 115,
                                    ),
                            // niveau d'etude
                            Container(
                              padding: EdgeInsets.only(left:10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:[
                                Wrap(children: [text("I.	Troisième Graduat, 2020-2021 (encours) ; Faculté de Science, Département de mathématique et informatique, Université de Kinshasa.",20,Colors.white)],),
                                ]
                              )
                            )
                          ],
                        ),
                      ),

                      // ligne 3
                      Container(
                        margin: EdgeInsets.only(top:10),
                        decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(15),
                                 color: Colors.greenAccent,
                              ),
                          height: 150,
                          width: 400,
                          child: Column(children: [
                            Container(
                                      height: 30,
                                      child: text("Competences",25, Colors.white)
                                    ),
                                    // ligne blache
                                    Container(
                                      margin: EdgeInsets.only(bottom:10,top:5),
                                      color: Colors.white,
                                      height: 3,
                                      width: 115,
                                    ),
                            // niveau d'etude
                            Container(
                              padding: EdgeInsets.only(left:10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:[
                                Wrap(children: [text("développement web et mobile avec comme Langage:Dart et Framework: Flutter",20,Colors.white)],),
                                ]
                              )
                            )
                          ],
                        ),
                      ),


                       // ligne 4
                      Container(
                        margin: EdgeInsets.only(top:10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(15),
                                 color: Colors.amberAccent,
                              ),
                          width: 400,
                          child: Column(children: [
                            Container(
                                      height: 30,
                                      child: text("Autres",25, Colors.white)
                                    ),
                                    // ligne blache
                                    Container(
                                      margin: EdgeInsets.only(bottom:10,top:5),
                                      color: Colors.white,
                                      height: 3,
                                      width: 115,
                                    ),
                            // niveau d'etude
                            Container(
                              padding: EdgeInsets.only(left:10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:[
                                Wrap(children: [text("Membre du sTart up Wissen",20,Colors.white)],),
                                Wrap(children: [text("L'un de Membre plus le plus Imfluent du groupe Avangers et Powerfull ",20,Colors.white)],),
                                ]
                              )
                            )
                          ],
                        ),
                      ),


                  Btremerciment()

                    ]
                  ),
                  ],
                ),
              )
              ),
          ]
        ),
        
     
      ),
    );
  }
}