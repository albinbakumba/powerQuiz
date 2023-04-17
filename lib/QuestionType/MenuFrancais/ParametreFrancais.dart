import 'package:alibali/QuestionType/MenuFrancais/ProfMulo/parametreProfMulo.dart';
import 'package:alibali/QuestionType/MenuFrancais/lesEnigme/ParametreLesEnigmes.dart';



void parametreFrancais(context,String titre,String typeQuestion) {
       switch (typeQuestion){
        case "Prof Mulo":parametreProfMulo(titre, context);
          break;
        case "Les Enigmes":parametreLesEnigmes(titre, context);
          break;
      }
    }