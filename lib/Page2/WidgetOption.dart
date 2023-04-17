import 'package:alibali/ApparenceGenerale/Style/style.dart';
import 'package:alibali/Page2/Page2.dart';
import 'package:alibali/QuestionType/MenuFrancais/GestionFrancais.dart';
import 'package:alibali/QuestionType/MenuMath/GestionMaths.dart';
import 'package:flutter/material.dart';



class WidgetOption extends StatefulWidget {
  const WidgetOption({
     Key key,
     @override this.titre,
     }) : super(key: key);

    final String titre;
  _WidgetOptionState createState() => _WidgetOptionState();
}

class _WidgetOptionState extends State<WidgetOption> {
  @override
  Widget build(BuildContext context) {
      return InkWell(
        //Widget option(){
          // aparence du bt du msbox
          child: Container(
            margin: EdgeInsets.only(bottom:10),
                    width: double.infinity,
                    height:  45,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber,width:3),
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.greenAccent 
                      ),
              // titre du bouton
                  child: Center(
                    child: text(widget.titre, 25, Colors.white)
                  ),
               ),
                    onTap: (){
                      switch (optionMenuClik) {
                        case "Calculs":gestionMaths(widget.titre, context,"Calculs");
                          break;
                        case "Francais":gestionfrancais(widget.titre, context,"Francais");
                          break;
                      }
                  }
           );
  }
}