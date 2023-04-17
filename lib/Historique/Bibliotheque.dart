import 'package:alibali/ApparenceGenerale/AppBar/APPbar.dart';
import 'package:alibali/ApparenceGenerale/Style/style.dart';
import 'package:alibali/ApparenceGenerale/body/ContenuMsBox.dart';
import 'package:flutter/material.dart';



class Bibliotheque extends StatefulWidget {
  const Bibliotheque({ Key key }) : super(key: key);

  @override
  _BibliothequeState createState() => _BibliothequeState();
}

class _BibliothequeState extends State<Bibliotheque> {
 
 Widget assertion(String titre){
      return  InkWell(
        child: Container(
                    margin:  EdgeInsets.all(5),
                                height: 110,
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
                                      margin: EdgeInsets.only(top:10),
                                      height: 70,
                                      child:  Center(
                                        child: Icon(Icons.description,size: 70,color: Colors.white,)
                                      )
                                    )
                                ])
                              ),
                  onTap: (){
                  msgBox2("nous sommes Désole !!","img/emodji/1.jpg"," Nos livres ne sont pas disponibles, veuillez installer la nouvelle version de l'application", "Quitter");
                  } ,
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

        appBar: appbar(context,"Mini Bibliotheque"),
        //  la partie body
          body: ListView(
            children:[
            
            // titre culture
              Container(
                margin: EdgeInsets.only(top:50),
                width:300,
                height:50,
                color:Colors.green,
                child: Center(child: text("Portail", 25, Colors.white)),
              ),
            
            // partie contenant les scort de question
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  // colonne numero une
                  Column(
                    children: [
                          assertion("Culture"),
                          assertion("Francais"),
                          assertion("Psychologie")
                    ],
                  ),

                  Column(
                    children: [
                          assertion("Les maths"),
                          assertion("Physique"),
                          assertion("Les Enigmes")
                    ],
                  )
              ],                
            ),
            ]
          )
      ),
    );
  }



   // msgbox2
    Future<Null> msgBox2(String bReponse, String image, String explication, String situation) async{
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context){
          return new SimpleDialog(
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),

        //contenue du showdialogue (messageBox)
          children: [
              // container principal
              Scrollbar(child: contenuMsBox(image, bReponse, explication, situation, context))
                  
             ],
          );
      });
  }
}