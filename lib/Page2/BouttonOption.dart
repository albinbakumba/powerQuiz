import 'package:alibali/ApparenceGenerale/Style/style.dart';
import 'package:alibali/Data/SharedPreferences.dart';
import 'package:alibali/Historique/Bibliotheque.dart';
import 'package:alibali/Historique/esseif.dart';
import 'package:alibali/Page2/Body/MsgboxPage2Suite.dart';
import 'package:alibali/Page2/Page2.dart';
import 'package:alibali/QuestionType/MenuCulture/Biologie/MenuBiologie.dart';
import 'package:alibali/QuestionType/MenuFrancais/GestionFrancais.dart';
import 'package:alibali/QuestionType/MenuMath/GestionMaths.dart';
import 'package:alibali/QuestionType/MenuPsychologie/Psychologie.dart';
import 'package:flutter/material.dart';



class OptionMenu extends StatefulWidget {
  const OptionMenu({
  @override this.titre,
  @override this.image
   });

  @override
  _OptionMenuState createState() => _OptionMenuState();
  final String titre;
  final String image;
}

class _OptionMenuState extends State<OptionMenu> {
  @override
  Widget build(BuildContext context) {
   // return InkWell optionMenu(String titre, String image){
  return InkWell(
    // container arriere plan
    child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: FittedBox(
                  child: Column(
              children: [
            //container d'image
                Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.fill
                  ),
              ),
                  margin: EdgeInsets.all(5),
                  width: 120,
                  height:120,
                ),

              // le text ou titre
              text(widget.titre, 25, Colors.green)
              ],),
          ),
    ),

  // la partie action
    onTap: ()async{
        switch (widget.titre) {
          case "Culture":{
              Navigator.push(context, 
                            MaterialPageRoute(builder: (context)=>MenuBiologie(nbrQuestion: 10)));
              setState(() {
              optionMenuClik="Culture";
          });
          break;
          }
          case "Francais":{
              msgBox("Francais",optionFrancais);
              setState(() {
              optionMenuClik="Francais";
            });
          break;
          }
          case "Calculs":{
              msgBox("Calculs",optionMathematique);
              setState(() {
              optionMenuClik="Calculs";
            });
          break;
          }
          case "Psychologie":{
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>Psychologie(nbrQuestion:10)));
          break;
          }
          case "Mes Scores":{
            int vbiologie;
            // parti culture
              try {
                vbiologie = int.parse(await shareget("Biologie"));
              } catch (e) {
                shareset("Biologie",(0).toString());
                vbiologie=0;
              }
              
             
            // partie francais
            int vProfMulo,vLesEnigmes;
              try {
                vProfMulo = int.parse(await shareget("Prof mulo"));
              } catch (e) {
                shareset("Prof mulo",(0).toString());
                vProfMulo=0;
              }

              try {
                vLesEnigmes = int.parse(await shareget("Les Enigmes"));
              } catch (e) {
                shareset("Les Enigmes",(0).toString());
                vLesEnigmes=0;
              }

            // partie maths
            int vJeunematheu,vTrigon0metrie;
              try {
                vJeunematheu = int.parse(await shareget("Jeune Matheux"));
              } catch (e) {
                shareset("Jeune Matheux",(0).toString());
                vJeunematheu=0;
              }

              try {
                vTrigon0metrie = int.parse(await shareget("Trigonometrie"));
              } catch (e) {
                shareset("Trigonometrie",(0).toString());
                vTrigon0metrie=0;
              }


            // partie psychologie
            int vpsychologie;
            try {
                vpsychologie = int.parse(await shareget("Psychologie"));
              } catch (e) {
                shareset("Psychologie",(0).toString());
                vpsychologie=0;
              }

            
            
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>Esseif(
                // culture
                biologie:vbiologie,
                //maths
                jeunematheu: vJeunematheu,
                trigonometrie: vTrigon0metrie,
                //francais
                profMulo:  vProfMulo,
                lesEnigmes: vLesEnigmes,

                //psychologie
                psychologie:  vpsychologie,

                )));
          break;
          }
          
          default: Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>Bibliotheque()));
        }
    },
  );
  }


  // msgbox
    Future<Null> msgBox( String titre, List<Widget> listDeChoix) async{
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
              // container principal
                  msgboxPage2(titre, listDeChoix)
             ],
          );
      });
  }
}