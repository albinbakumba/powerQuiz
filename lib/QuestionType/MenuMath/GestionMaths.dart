import 'package:alibali/QuestionType/MenuMath/JeuneMatheux/JeuneMatheu.dart';
import 'package:alibali/QuestionType/MenuMath/physique/Physique.dart';
import 'package:flutter/material.dart';

List <String> sousQuestionMath=["Jeune Matheux","Physique"]; // Mathematique
 List<Widget> optionMathematique=[];    // la liste de choix Mathematique
void gestionMaths(String titre, BuildContext context,String categorie){
                       if (titre=="Jeune Matheux") {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context)=>MenuJeuneMatheu(nbrQuestion:3)));
                          }
                      else if (titre=="Physique") {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context)=>MenuPhysique(nbrQuestion:10)));
                          }
}