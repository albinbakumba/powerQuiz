// biblioteque culture
import 'package:alibali/ApparenceGenerale/Style/style.dart';
import 'package:alibali/Drawer/Page2Drawer.dart';
import 'package:alibali/Page2/BouttonOption.dart';
import 'package:alibali/Page2/WidgetOption.dart';
import 'package:alibali/QuestionType/MenuFrancais/GestionFrancais.dart';
import 'package:alibali/QuestionType/MenuMath/GestionMaths.dart';
import 'package:flutter/material.dart';



///***************************** variable bublic page 2******************************//
List<OptionMenu> menuPrincipal=[]; // menu principal

 String optionMenuClik="";


class Page2 extends StatefulWidget {
  const Page2({ Key key }) : super(key: key);
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {

//partie initialisation (initState)
    @override
        void initState(){
          super.initState();
       // les option du menu principal
          menuPrincipal.clear();
          menuPrincipal.add(OptionMenu(titre:"Culture",image:"img/profil/8.png"));
          menuPrincipal.add(OptionMenu(titre:"Calculs", image:"img/profil/3.png"));
          menuPrincipal.add(OptionMenu(titre:"Francais", image:"img/profil/2.png"));
          menuPrincipal.add(OptionMenu(titre:"Psychologie", image:"img/profil/4.png"));
          menuPrincipal.add(OptionMenu(titre:"Mes Scores", image:"img/profil/1.png"));
          menuPrincipal.add(OptionMenu(titre:"Bibliotheque", image:"img/profil/7.png"));

    // initialisation de sous question 
        // question francais
              optionFrancais.clear();
          for (var i = 0; i < sousQuestionFrancais.length ; i++) {
              String titrez=sousQuestionFrancais[i];
              optionFrancais.add(WidgetOption(titre: titrez));
          }
        // question mathematique
        optionMathematique.clear();
          for (var i = 0; i < sousQuestionMath.length ; i++) {
            String titrez=sousQuestionMath[i];
              optionMathematique.add(WidgetOption(titre: titrez));
          }
        }
 
    @override
  Widget build(BuildContext context) {


    
    return  Container(

      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/60.png"),
            fit: BoxFit.fill
            ),
        ),
      child: Scaffold(
         backgroundColor: Colors.black.withOpacity(0.7), // couleur du backGround

      // bar de titre
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: text("Menu", 35, Colors.white),
            centerTitle: true,
            actions: [
              IconButton(icon: Icon(Icons.close,size:30),  // bouton pour la sortie de l'aplication
              onPressed:(){
                //msgBox2();
              })
            ],
       
        ),

      //plusieur options du cote gauche 
        drawer: page2Drawer(context),

      // la partie body
          body: bodyPage2(),
        ),
    );
  }

    Stack bodyPage2() {
      return Stack(
        children:[
           
        
        // container principal
          Center(
              child: Card(
                elevation: 10,
                color: Colors.transparent,
                 margin: EdgeInsets.only(top:25, bottom: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Container(
                    height: 500,
                    width: 320,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),

                  // donnees du container principal
                  child: GridView.count(
                    crossAxisCount:2,
                    children: menuPrincipal,
                    )
                ),
              ),
            ),
        ]
      );
    }
}
