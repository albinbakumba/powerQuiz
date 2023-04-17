import 'dart:math';

import 'package:alibali/ApparenceGenerale/AppBar/APPbar.dart';
import 'package:alibali/ApparenceGenerale/body/body.dart';
import 'package:alibali/PageQuestion/CLassUtilisee.dart';
import 'package:alibali/QuestionType/MenuMath/physique/QuestionPhysique.dart';
import 'package:flutter/material.dart';


class MenuPhysique extends StatefulWidget {
  const MenuPhysique({ Key key ,@override this.nbrQuestion }) : super(key: key);
  final int nbrQuestion;
  _MenuPhysiqueState createState() => _MenuPhysiqueState();
}
class _MenuPhysiqueState extends State<MenuPhysique> {

List<Quizx>listQuestionChoisie=[];
    List<Quizx>passoire=[];
 
   @override
   void initState(){
     super.initState();
     
        setState(() {
          listQuestionChoisie.clear();
          passoire.clear();
        });
    while (passoire.length<widget.nbrQuestion) {
       int noyau=0;
        for (var i = 0; i < sousQuestionPhysique.length; i++) {
           noyau= DateTime.now().millisecond;
            Random hasard = new Random(noyau);
            listQuestionChoisie.add(sousQuestionPhysique[hasard.nextInt(sousQuestionPhysique.length)]);
        }

        listQuestionChoisie.forEach((item) { 
        if(
            passoire.firstWhere((element) => element==item,orElse: () => null,   
              )==null ){
               passoire.add(item);
          }
        });
    }     
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
         backgroundColor: Colors.black.withOpacity(0.7),// couleur du backGround
          // bar de titre
       appBar: appbarQuestion(context,"Physique"),
        
        //  la partie body
          body: Body(listQuestion:passoire,serie:2,cle:"Trigonometrie",)
      ),
    );
  }
}