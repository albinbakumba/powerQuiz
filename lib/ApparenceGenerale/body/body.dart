import 'dart:math';
import 'package:alibali/ApparenceGenerale/Style/style.dart';
import 'package:alibali/ApparenceGenerale/body/ContenuMsBox.dart';
import 'package:alibali/Data/SharedPreferences.dart';
import 'package:alibali/PageQuestion/CLassUtilisee.dart';
import 'package:alibali/QuestionType/MenuCulture/Biologie/MenuBiologie.dart';
import 'package:alibali/QuestionType/MenuFrancais/ProfMulo/MenuProfMulo.dart';
import 'package:alibali/QuestionType/MenuFrancais/lesEnigme/LesEnigme.dart';
import 'package:alibali/QuestionType/MenuMath/physique/Physique.dart';
import 'package:alibali/QuestionType/MenuPsychologie/Psychologie.dart';
import 'package:flutter/material.dart';



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

  
  
   Widget assertions(String assertionChoisie){
    return InkWell(
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom:15),
                    padding: EdgeInsets.all(7),
                    color: Colors.green.withOpacity(0.7),
                    width:300,
                    child: Center(child: text2(assertionChoisie,20,Colors.white,TextAlign.center))
                  ),
                ),
              onTap:()async{
                  if (j<widget.serie-1) {
                     parametreBody1(assertionChoisie);
                }
                else{
                  await parametreBody2(assertionChoisie);
                }
              },
            );
  }

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
     
     try {
       ancienScore=int.parse(await shareget(widget.cle));
     } catch (e) {
       shareset(widget.cle,(0).toString());
       ancienScore=0;
     }

     if (ancienScore==null || ancienScore<pourcentage.ceil()) {
         shareset(widget.cle,(pourcentage.ceil()).toString());
     }
     
     setState(() {
       if (pourcentage.ceil()<50) {
         imagex="img/emodji/3.gif";
         reponse="Pourcentage: "+(pourcentage.ceil()).toString();
         msgBox2Fin(reponse, imagex," L’effort fait les forts, sacrifie un peu de ton temps en s'exerçant. Nous te proposons quelques pistes (voir bibliothèque).",widget.cle);
     }
     else if(pourcentage.ceil()>=50 || pourcentage.ceil()<100) {
         imagex="img/emodji/11.gif";
         reponse="Pourcentage: "+(pourcentage.ceil()).toString();
         msgBox2Fin(reponse, imagex," Excellent, mais il te reste encore du travail. Ne t’arrête pas la travaille encore sur toi jusqu’à atteindre la barre de 100%.",widget.cle);
     }
     else{
         imagex="img/emodji/5.gif";
         reponse="Pourcentage: "+(pourcentage.ceil()).toString();
         msgBox2Fin(reponse, imagex, " Pas trop à dire tu es juste merveilleux. Prouve-nous que tu peux l’être encore une fois en réessayant ",widget.cle);
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
            child: Text("Question "+(j+1).toString()+"/"+widget.serie.toString(),
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
            child: ListView(
              children:[
                // question posee
                  Center(child: text(widget.listQuestion[j].question, 21,Colors.white,)),

                  ligneBlance(200), // la barre sous la question

                // l'etape qui qontion toute les assertion
                assertions(widget.listQuestion[j].assertions[0]),
                assertions(widget.listQuestion[j].assertions[1]),
                assertions(widget.listQuestion[j].assertions[2]),
                assertions(widget.listQuestion[j].assertions[3]),
                assertions(widget.listQuestion[j].assertions[4]),
                    
              ]
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


  // msgbox2fin
    Future<Null> msgBox2Fin(String bReponse, String image, String explication, String situation) async{
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
              Scrollbar(child: Container(
              height: 350,
              width: 300,
                child: Stack(
                  children: [
                    // l'ombre
                    Container(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    ListView(
                      children: [

                      // container de l'image
                        Center(
                          child: Container(
                              margin: EdgeInsets.only(top:20),
                              height:200,
                              width:150,
                              //color: Colors.yellow,
                              child: Image.asset(image,fit: BoxFit.fill,)
                          ),
                        ),

                      // container de l'explication
                        Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(padding: EdgeInsets.all(15),margin: EdgeInsets.only(top:10),child: text(bReponse, 20, Colors.white)),
                                Container(padding: EdgeInsets.all(15),margin: EdgeInsets.only(top:10,bottom:5),child: Center(child: text2(explication, 20, Colors.white,TextAlign.left))),
                                
                            // le deux boutton rependre et quitter
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[

                             // boutton rependre
                                InkWell(
                                  child: Container(
                                      margin: EdgeInsets.only(bottom:10),
                                      decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(width:3,color: Colors.yellow)
                                      ),
                                      width: 120,
                                      height: 50,
                                      child: Center(child: text("Quitter",20,Colors.white)),
                                  ) ,
                                onTap: (){
                                  Navigator.pop(context);
                                },
                              ),

                              //rependre 
                              InkWell(
                                  child: Container(
                                      margin: EdgeInsets.only(bottom:10),
                                      decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(width:3,color: Colors.yellow)
                                      ),
                                      width: 120,
                                      height: 50,
                                      child: Center(child: text("Reprendre",20,Colors.white)),
                                  ) ,
                                onTap: ()async{
                                
                                
                                  if ( situation.contains("Biologie")==true) {
                                  Navigator.pop(context);
                                  await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>MenuBiologie(nbrQuestion: 10,)));
                                  }
                                  else if(situation.contains("Les Enigmes")==true){
                                  Navigator.pop(context);
                                  await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>LesEnigme(nbrQuestion: 10,)));
                                  }
                                  else if(situation.contains("Prof mulo")==true){
                                  Navigator.pop(context);
                                  await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>MenuProfMulo(nbrQuestion: 10,)));
                                  }
                                  else if(situation.contains("Trigonometrie")==true){
                                  Navigator.pop(context);
                                  await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>MenuPhysique(nbrQuestion: 10,)));
                                  }
                                  else if(situation.contains("Psychologie")==true){
                                  Navigator.pop(context);
                                  await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Psychologie(nbrQuestion: 10,)));
                                  }
                                },
                              )

                              ]
                            )
                            ],
                                
                          ), 
                        )
                      ],
                    ),
                  ],
                ),
            ))
                  
             ],
          );
      });
  }

}