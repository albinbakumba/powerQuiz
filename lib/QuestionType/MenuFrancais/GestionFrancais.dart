import 'package:alibali/QuestionType/MenuFrancais/ProfMulo/MenuProfMulo.dart';
import 'package:alibali/QuestionType/MenuFrancais/lesEnigme/LesEnigme.dart';
import 'package:flutter/material.dart';


List<Widget> optionFrancais=[];   // la liste de choix francais
List <String> sousQuestionFrancais=["Grammaire","Les Enigmes"]; // francais


void gestionfrancais( String titre, BuildContext context,String categorie){
                     
                      if (titre=="Grammaire") {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context)=>MenuProfMulo(nbrQuestion:10)));
                          }
                      else if (titre=="Les Enigmes") {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context)=>LesEnigme(nbrQuestion:10)));
                          }
}