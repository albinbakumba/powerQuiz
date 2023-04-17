
import 'package:alibali/ApparenceGenerale/AppBar/APPbar.dart';
import 'package:alibali/ApparenceGenerale/Style/style.dart';
import 'package:flutter/material.dart';

class Esseif extends StatefulWidget {
  const Esseif({
  // partie culture 
   @override this.biologie,
   // partie francais
   @override this.profMulo,
   @override this.lesEnigmes,
   //partie maths
   @override this.jeunematheu,
   @override this.trigonometrie,
   
   // partie psycho
   @override this.psychologie,
  });
  _EsseifState createState() => _EsseifState();
  final int biologie;
  final int profMulo,lesEnigmes;
  final int jeunematheu,trigonometrie;
  final int psychologie;
}
class _EsseifState extends State<Esseif> {
//int valeur;

  

int j=0;

 Widget assertion(String titre,int valeur){
      return  Container(
                  margin:  EdgeInsets.all(5),
                              height: 80,
                              width: 150,
                             
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children:[
                                  Container(
                                    color: Colors.yellow.withOpacity(0.7),
                                    child: Text(
                                      titre,textAlign: TextAlign.center,
                                      style: TextStyle( 
                                        fontSize:25,color: Colors.white
                                      ) 
                                    ),
                                  ),


                                  Container(
                                    height: 50,
                                    child:  Center(
                                      child: Text("$valeur%", style: TextStyle( 
                                      fontSize:30,color: Colors.white
                                    ) ),
                                    )
                                  )
                              ]) 
                            );
          }
          

  @override
 void initState(){
      super.initState();
      
  }

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

        appBar: appbar(context,"meilleur Score"),
        //  la partie body
          body: Scrollbar(
            child: ListView(
              
              children:[
              
              // titre culture
                Container(
                  margin: EdgeInsets.only(top:10),
                  width:300,
                  height:50,
                  color:Colors.green,
                  child: Center(child: text("Culture", 25, Colors.white)),
                ),
              
              // partie contenant les scort de question
                 // partie contenant les scort de question
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Container(
                      margin: EdgeInsets.only(top:5,bottom: 50),
                      color: Colors.yellow.withOpacity(0.7),
                      width: 250,
                      height:60,
                      child: Center(
                        child: Text((widget.biologie).toString()+"%",style: TextStyle( 
                                          fontSize:30,color: Colors.white
                                        )),
                      )
                    )
                ],                
              ),


              // titre Mathematique
                Container(
                  margin: EdgeInsets.only(top:10),
                  width:300,
                  height:50,
                  color:Colors.green,
                  child: Center(child: text("Calculs", 25, Colors.white)),
                ),


                 // partie contenant les scort de question
                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    // colonne numero une
                    Column(
                      children: [
                            assertion("J-Matheux",widget.jeunematheu),
                      ],
                    ),

                    Column(
                      children: [
                            assertion("Physique",widget.trigonometrie),
                      ],
                    )
                ],                
              ),
              
               // titre Francais
                Container(
                  margin: EdgeInsets.only(top:10),
                  width:300,
                  height:50,
                  color:Colors.green,
                  child: Center(child: text("Francais", 25, Colors.white)),
                ),

                 // partie contenant les scort de question
                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    // colonne numero une
                    Column(
                      children: [
                            assertion("Les Enigmes",widget.lesEnigmes),
                      ],
                    ),

                    Column(
                      children: [
                            assertion("Prof mulo",widget.profMulo),
                      ],
                    )
                ],                
              ),


                

               // titre Psychologie
                Container(
                  margin: EdgeInsets.only(top:10),
                  width:300,
                  height:50,
                  color:Colors.green,
                  child: Center(child: text("Psychologie", 25, Colors.white)),
                ),


                 // partie contenant les scort de question
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Container(
                      margin: EdgeInsets.only(top:5,bottom: 50),
                      color: Colors.yellow.withOpacity(0.7),
                      width: 250,
                      height:60,
                      child: Center(
                        child: Text((widget.psychologie).toString()+"%",style: TextStyle( 
                                          fontSize:30,color: Colors.white
                                        )),
                      )
                    )
                ],                
              ),
              ]
            ),
          )
      ),
    );
  }}


