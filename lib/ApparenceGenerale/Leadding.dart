import 'package:alibali/ApparenceGenerale/Style/style.dart';
import 'package:alibali/ApparenceGenerale/bouttonMsBox.dart';
import 'package:flutter/material.dart';



class Leadding extends StatefulWidget {
  const Leadding({ Key key }) : super(key: key);
  @override
  _LeaddingState createState() => _LeaddingState();
}

class _LeaddingState extends State<Leadding> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.amber,
              size: 35,
              ),
        onPressed:(){
          msgBox();
          //Navigator.pop(context);
            });
  }
  // msgbox
    Future<Null> msgBox() async{
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context){
          return new SimpleDialog(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),

        //contenue du showdialogue (messageBox)
          children: [
              Container(
                height: 400,
                width: 350,
                child: Column(
                  children:[
                  
                  // container contenant le text
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 300,
                        child: Center(child: text("Voulez-vous Quitter réellement la partie??", 22, Colors.yellow))
                      ),
                    ),
                  
                  // container qui contient le gif
                    Container(
                      margin: EdgeInsets.only(top:10),
                      height:200,
                      width:200,
                      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/emodji/23.jpg"),
            fit: BoxFit.fill
            ),
        ),
                    ),

                  // container contenant le bouton annuler et contunuer
                  Container(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      BoutonMsBox(titre:"Annuler"),

                        Padding(padding: EdgeInsets.all(20)),

                      BoutonMsBox(titre:"Confirmer"),
                    ],
                  ))
                  ]
                ),
              )
             ],
          );
      });
  }
}