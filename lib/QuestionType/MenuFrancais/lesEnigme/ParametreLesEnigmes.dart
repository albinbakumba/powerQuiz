import 'package:alibali/QuestionType/MenuFrancais/lesEnigme/LesEnigme.dart';
import 'package:flutter/material.dart';



void parametreLesEnigmes(String titre, context) {
  switch (titre) {
    case "25/25":Navigator.push(context,MaterialPageRoute(builder: (context)=>LesEnigme(nbrQuestion: 25,)));
      break;
    case "50/50":Navigator.push(context,MaterialPageRoute(builder: (context)=>LesEnigme(nbrQuestion: 50,)));
      break;
    case "75/75":Navigator.push(context,MaterialPageRoute(builder: (context)=>LesEnigme(nbrQuestion: 75,)));
      break;
    case "100/100":Navigator.push(context,MaterialPageRoute(builder: (context)=>LesEnigme(nbrQuestion: 100,)));
      break;
  }
}