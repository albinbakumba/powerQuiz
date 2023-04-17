import 'dart:math';

import 'package:alibali/ApparenceGenerale/AppBar/APPbar.dart';
import 'package:alibali/ApparenceGenerale/Style/style.dart';
import 'package:alibali/ApparenceGenerale/body/ContenuMsBox.dart';
import 'package:alibali/Data/SharedPreferences.dart';
import 'package:alibali/PageQuestion/CLassUtilisee.dart';
import 'package:flutter/material.dart';

import 'QuestionLesEnigme.dart';



class LesEnigme extends StatefulWidget {
  const LesEnigme({ Key key ,
  @override this.nbrQuestion
     }) : super(key: key);
  final int nbrQuestion;
  _LesEnigmeState createState() => _LesEnigmeState();
}

class _LesEnigmeState extends State<LesEnigme> {
  // initialisation
 List<Quizx>listQuestionChoisie=[];
    List<Quizx>passoire=[];
    String repSaisi="";
 
   @override
   void initState(){
     super.initState();
     /*
      if (reponse.contains("5")==true) {
                       print("a est trouver");
                     }
                     else{
                       print("ne pas trouver");
                     }
     */
        setState(() {
          listQuestionChoisie.clear();
          passoire.clear();
        });
    while (passoire.length<widget.nbrQuestion) {
       int noyau=0;
        for (var i = 0; i < sousQuestionLesEnigmes.length; i++) {
           noyau= DateTime.now().millisecond;
            Random hasard = new Random(noyau);
            listQuestionChoisie.add(sousQuestionLesEnigmes[hasard.nextInt(sousQuestionLesEnigmes.length)]);
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
      child: Container(
        child: Scaffold(
           backgroundColor: Colors.black.withOpacity(0.7),      // couleur du backGround
            // bar de titre
         appBar: appbarQuestion(context,"Les Enigmes"),
          
          //  la partie body
            body: Body(listQuestion:passoire,serie:widget.nbrQuestion,cle:"Les Enigmes")
        ),
      ),
    );
  }
}




class Body extends StatefulWidget {
  const Body({
    @override this.listQuestion,
    @override this.serie,
    @override this.cle,
    });
  @override
  _BodyState createState() => _BodyState();
  final List<Quizx> listQuestion;
  final int serie;
  final String cle;
}

class _BodyState extends State<Body> {
  int j=0; // les indce
  int reussite=0;
  int ancienScore;
  String reponse="";
  String imagex="";
  String repsaisi="";
  String avertissement="";

   void parametreBody1(String assertionChoisie) {
      setState(() {
      if (widget.listQuestion[j].reponse.contains(assertionChoisie)==true) {
        int noyau= DateTime.now().millisecond;
        Random hasard = new Random(noyau);
        imagex=emodjiBonneR[hasard.nextInt(emodjiBonneR.length-1)];
        
        reponse="bravo!: la reponse est: "+widget.listQuestion[j].reponse;
        msgBox2(reponse,imagex, widget.listQuestion[j].explication,"Next");
        j=j+1;
        reussite=reussite+1;
        
      }
      else{
      reponse="Desolé: la reponse est: "+widget.listQuestion[j].reponse;
      int noyau= DateTime.now().millisecond;
      Random hasard = new Random(noyau);
      imagex=emodjiMauvaiseR[hasard.nextInt(emodjiMauvaiseR.length-1)];
      msgBox2(reponse,imagex, widget.listQuestion[j].explication,"Next");
      j=j+1;
      
                         }
                       });
   }

   Future parametreBody2(String assertionChoisie) async {
     if (widget.listQuestion[j].reponse.contains(assertionChoisie)==true) {
         setState(() {
           reussite=reussite+1;
         });
         }
     
     Navigator.pop(context);
     double pourcentage=(reussite*100)/widget.serie;  // recuperation du pourcentage
     
     //recuperation du Score
     ancienScore=int.parse(await shareget(widget.cle));
     if (ancienScore==null || ancienScore<pourcentage.ceil()) {
         shareset(widget.cle,(pourcentage.ceil()).toString());
     }
     
     setState(() {
       if (pourcentage.ceil()<50) {
         imagex="img/emodji/3.gif";
         reponse="Pourcentage: "+(pourcentage.ceil()).toString();
         msgBox2(reponse, imagex," L’effort fait les forts, sacrifie un peu de ton temps en s'exersant. Nous te proposons quelques pistes (voir bibliothèque).","D'accord");
     }
     else if(pourcentage.ceil()>=50 || pourcentage.ceil()<100) {
         imagex="img/emodji/11.gif";
         reponse="Pourcentage: "+(pourcentage.ceil()).toString();
         msgBox2(reponse, imagex," Excellent, mais il te reste encore du travail. Ne t’arrête pas la travaille encore sur toi jusqu’à atteindre la barre de 100%.","D'accord");
     }
     else{
         imagex="img/emodji/5.gif";
         reponse="Pourcentage: "+(pourcentage.ceil()).toString();
         msgBox2(reponse, imagex, " Pas trop à dire tu es juste merveilleux. Prouve-nous que tu peux l’être encore une fois en réessayant ","D'accord");
     }
     });
   }


  @override
  Widget build(BuildContext context) {
    return Stack(
            children:[

            arrierePlanContainer(),  // container arriere plan

      // container contenant le numero de la question
        Container(
          height: 100,
          child: Center(
            child: Text("Enigme "+(j+1).toString()+"/"+widget.serie.toString(),
            style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            fontFamily: "serif",
            color: Colors.amber
                   ),
                  ),
            ),
          ),

          // container contennant la question et des reponse
    Center(
      child: Container(
        margin: EdgeInsets.only(top:70),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          border: Border.all(width:5,color: Colors.white),
          borderRadius: BorderRadius.circular(30)
        ),
        width: 330,
        height: 400,
        child: Center(
          child: Scrollbar(
            child: Stack(
              children: [
                ListView(
                  children:[
                    // question posee
                      Center(child: Container(height:200,child: Center(child: text(widget.listQuestion[j].question, 22,Colors.white,)))),

                      ligneBlance(200), // la barre sous la question

                      Center(child: text2(avertissement,25,Colors.red,TextAlign.center))
                  
                  ]
                ),


              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(top:300),
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Center(
                  child: Row(
                    children: [
                      Container(
                        width: 240,
                        child: TextField(
                                textAlign: TextAlign.center,
                                autofocus: true,
                                cursorColor: Colors.green,
                                cursorWidth: 5,
                                decoration: InputDecoration(
                                
                                ),

                                onChanged:(value){
                                
                                      setState(() {
                                        repsaisi=value.toString();
                                      });
                                },
                              ),
                      ),
                      IconButton(icon: Icon(Icons.send,size:35,color: Colors.green,),
                       onPressed:() async {

                         if (repsaisi=="") {
                            setState(() {
                                avertissement="veuillez repondre";
                            });
                         }
                         else{
                           setState(() {
                                avertissement="";
                            });
                        if (j<widget.serie-1) {
                          parametreBody1(repsaisi);
                          }
                        else{
                          await parametreBody2(repsaisi);
                          }
                       }
                         }
                          
                       )
                    ],
                  ),
                ),
              )

              ],
            ),
          ),
        ),
      ),
    )
  ]);
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