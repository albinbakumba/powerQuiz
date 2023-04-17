import 'dart:async';
import 'dart:math';
import 'package:alibali/ApparenceGenerale/Style/style.dart';
import 'package:alibali/Data/SharedPreferences.dart';
import 'package:alibali/Drawer/Apropos.dart';
import 'package:alibali/QuestionType/MenuMath/JeuneMatheux/btMsbx.dart';
import 'package:flutter/material.dart';



class MenuJeuneMatheu extends StatefulWidget {
  const MenuJeuneMatheu({ Key key,@override this.nbrQuestion }) : super(key: key);
  final int nbrQuestion;
  _MenuJeuneMatheuState createState() => _MenuJeuneMatheuState();
}
class _MenuJeuneMatheuState extends State<MenuJeuneMatheu> {
String reponse,imagex;
  
   

  Timer teaming ;
  int chrono=60;

  void startTimer(){
    teaming = Timer.periodic(Duration(seconds:1), (Timer timer){
      setState(() {
        if (chrono<1) {
           // msgBox(context,0,3,3,0);
            teaming.cancel();  
        }
      else{
        chrono=chrono-1;
        print(chrono);
      }
      });
    });
  }
 
   int mathresultat;

  String repSaisi1="",repsaisie2="",repsaisie3="";
  String message="";

  Container ligne(String titre){
    return 
           // container du questtion
                    Container(
                      color:Colors.transparent,
                      height: 50,
                      width:200,
                      child: Center(
                        child: text(titre, 20, Colors.white),
                      ),      
                );
  }

  int j=0; // les indce
  int reussite=0;
  int ancienScore;

  String affiche1,affiche2,affiche3;
  int a1=0,a2=0,a3=0,b1=0,b2=0,b3=0,c1=0,c2=0,c3=0,signe1=0,signe2=0,signe3=0;
  int reponse1=0,reponse2=0,reponse3;

  @override
  void initState() {
    super.initState();
    startTimer();
      
    int noyau=0;
    // initialisation ligne 1 et 2
     
    setState(() {
  while(a1==a2 || a2==a3 || a1==a3 ||
          a1==b1 || a1==b2 || a1==c1 || 
          a1==c2 || a2==b1 || b1==b2 || 
          b2==b3 || b1==b3 || b1==c1 ||
          b1==c2 || c1==c2 || c2==c3 ||
          c1==c3
          ){
      noyau= DateTime.now().millisecond;
      Random hasard = new Random(noyau);

      a1=hasard.nextInt(300);
      a2=hasard.nextInt(300);
      a3=hasard.nextInt(300);

      b1=hasard.nextInt(300);
      b2=hasard.nextInt(300);
      b3=hasard.nextInt(300);

      c1=hasard.nextInt(300);
      c2=hasard.nextInt(300);
      c3=hasard.nextInt(300);
    }

while ( signe1==signe2 || signe1==signe3||
        signe2==signe3 || signe3==0
       ) {

      noyau= DateTime.now().millisecond;
      Random hasard = new Random(noyau);

      signe1=hasard.nextInt(5);
      signe2=hasard.nextInt(5);
      signe3=hasard.nextInt(5);
}
            // les parametres
parametreSigne1();    

parametreSigne2();
   
parametreSigne3();


    });
}
   
    @override
void dispose(){
  super.dispose();
  teaming.cancel();
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
       appBar:  AppBar(
        backgroundColor: Colors.transparent,
      
      //boutom arriere
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.amber,
              size: 35,
              ),
        onPressed:(){
          msgBox3();
          //Navigator.pop(context);
            }),


      // la partie titre
        title: text("Matheux", 20, Colors.white) ,
        centerTitle: true,
       // centerTitle: true,

      //la partie action pour le pop menu
        actions: [
           PopupMenuButton(
             color: Colors.greenAccent,
                icon: Icon(
                    Icons.clear_all,
                    size: 35,
                    color: Colors.amber,
                    ),
                elevation: 10,
                onSelected:(value){
                  if (value==1){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Apropos()));
                  }
                else if (value==2) {
                  print("2");
                }
                else if (value==3) {
                  
                }


                },
                itemBuilder: (BuildContext context){
                    return[
                      PopupMenuItem(child: text("Aide",20,Colors.white),value: 2,),
                    ];
                }
                
                )  
      ],
    ),
        
        //  la partie body
          body: Stack(
            children:[

            arrierePlanContainer(),  // container arriere plan

      // container contenant le numero de la question
        Container(
          height: 100,
          child: Center(
            child: Text("chrono: "+chrono.toString(),
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
          child: ListView(
            children:[
              // question posee
                Center(child: text("Calculatrice interdite!!", 22,Colors.white,)),

                ligneBlance(200), // la barre sous la question
              Padding(padding: EdgeInsets.only(top:20)),
              //  ligne1
               Row(
                 children: [
                   ligne(affiche1),
                    // container reponse
                    Container(
                      padding: EdgeInsets.all(5),
                       color:Colors.white.withOpacity(0.7),
                      height: 50,
                      width:80,
                      child: TextField(
                        textAlign: TextAlign.center,
                        autofocus: true,
                        cursorColor: Colors.yellow,
                        cursorWidth: 10,
                        decoration: InputDecoration(
                        
                        ),

                        onChanged:(value){
                        
                              setState(() {
                                repSaisi1=value.toString();
                              });
                        },
                      ),
                    )
                 ],
               ),

                          Padding(padding: EdgeInsets.only(top:15)),

                //  ligne2
               Row(
                 children: [
                   ligne(affiche2),
                   Container(
                      padding: EdgeInsets.all(5),
                       color:Colors.white.withOpacity(0.7),
                      height: 50,
                      width:80,
                      child: TextField(
                        textAlign: TextAlign.center,
                        autofocus: true,
                        cursorColor: Colors.yellow,
                        cursorWidth: 10,
                        decoration: InputDecoration(
                        
                        ),

                        onChanged:(value){
                        
                              setState(() {
                                repsaisie2=value.toString();
                              });
                        },
                      ),
                    )
                 ],
               ),

                          Padding(padding: EdgeInsets.only(top:15)),

                //  ligne3
                Row(
                  children: [
                    ligne(affiche3),
                    Container(
                      padding: EdgeInsets.all(5),
                       color:Colors.white.withOpacity(0.7),
                      height: 50,
                      width:80,
                      child: TextField(
                        textAlign: TextAlign.center,
                        autofocus: true,
                        cursorColor: Colors.yellow,
                        cursorWidth: 10,
                        decoration: InputDecoration(
                        
                        ),

                        onChanged:(value){
                        
                              setState(() {
                                repsaisie3=value.toString();
                              });
                        },
                      ),
                    )
                  ],
                ),

                // message en cas d'erreur
                Center(
                child: Container(
                  margin: EdgeInsets.only(top:10),
                  child:text(message, 20, Colors.red))
              ),
                

                // bouttom valider
                Center(
                  child: InkWell(
                      child: Container(
                        margin: EdgeInsets.only(top:10),
                        color:Colors.green.withOpacity(0.7),
                        height: 50,
                        width:150,
                        child: Center(child: text("valider", 25, Colors.white)),
                      ),
                    onTap: ()async{
                    if (repsaisie3=="" || repsaisie2=="" || repSaisi1=="") {
                       setState(() {
                            message=" il y a des cases vide";
                       });
                      }
                    else{
                      teaming.cancel();
                      int v1=0,v2=0,v3=0;
                      double score=0;
                      setState(() {
                        message="";
                        if (repSaisi1==reponse1.toString()) {
                            v1=1;
                            reussite=reussite+1;
                        }
                        if (repsaisie2==reponse2.toString()) {
                          v2=1;
                          reussite=reussite+1;
                        }
                        if (repsaisie3==reponse3.toString()) {
                          v3=1; 
                          reussite=reussite+1;                         
                        }
                        if ((v1+v2+v3)>0) {
                          score=((v1+v2+v3)*100)/3;
                        }
                      });
                      
                    
                    try {
                      ancienScore=int.parse(await shareget("Jeune Matheux"));
                    } catch (e) {
                      shareset("Jeune Matheux",(0).toString());
                      ancienScore=0;
                    }

                  if (ancienScore==null || ancienScore<score) {
                        shareset("Jeune Matheux",(score.ceil()).toString());
                        }
                  
    setState(() {
      if (score.ceil()<50) {
         imagex="img/emodji/3.gif";
         reponse="Pourcentage: "+(score.ceil()).toString();
         Navigator.pop(context);
         msgBox2(affiche1,reponse1,affiche2,reponse2,affiche3,reponse3,reponse, imagex," L’effort fait les forts, sacrifie un peu de ton temps. Nous te proposons quelques pistes (voir bibliothèque).","reprendre");
     }
     else if(score.ceil()>=50 || score.ceil()<100) {
         imagex="img/emodji/11.gif";
         reponse="Pourcentage: "+(score.ceil()).toString();
         Navigator.pop(context);
         msgBox2(affiche1,reponse1,affiche2,reponse2,affiche3,reponse3,reponse, imagex," Excellent, mais il te reste encore du travail. Ne t’arrête pas la travaille encore sur toi jusqu’à atteindre la barre de 100%.","reprendre");
     }
     else{
         imagex="img/emodji/5.gif";
         reponse="Pourcentage: "+(score.ceil()).toString();
         Navigator.pop(context);
         msgBox2(affiche1,reponse1,affiche2,reponse2,affiche3,reponse3,reponse, imagex, " Pas trop à dire tu es juste merveilleux. Prouve-nous que tu peux l’être encore une fois en réessayant ","reprendre");
     }
     });
                    }
                    },
                  ),
                ),
            ]
          ),
        ),
      ),
    )
  ])
  )
  );
  }

   void parametreSigne1() {
    switch (signe1) {
      case 1:{
          setState(() {
            reponse1=a1+a2+a3;
          affiche1=a1.toString()+" + "+a2.toString()+" + "+a3.toString()+" =";
          });
          break;  
      }
      case 2:{
        setState(() {
           reponse1=(a1+a2)-a3;
          affiche1=a1.toString()+" + "+a2.toString()+" - "+a3.toString()+" =";
        });
          break;  
      }
      case 3:{
          setState(() {
            reponse1=a1+(a2*a3);
          affiche1=a1.toString()+" + "+a2.toString()+" x "+a3.toString()+" =";
          });
          break;  
      }
      case 4:{
          setState(() {
            reponse1=(a1*a2)-a3;
          affiche1=a1.toString()+" x "+a2.toString()+" - "+a3.toString()+" =";
          });
          break;  
      }
      default:{
        setState(() {
          reponse1=(a1*a2)+a3;
          affiche1=a1.toString()+" x "+a2.toString()+" + "+a3.toString()+" =";
        });
        break;
      }
    }
  }

void parametreSigne2() {
    switch (signe2) {
      case 1:{
          setState(() {
            reponse2=b1+b2+b3;
          affiche2=b1.toString()+" + "+b2.toString()+" + "+b3.toString()+" =";
          });
          break;  
      }
      case 2:{
        setState(() {
          reponse2=(b1+b2)-b3;
          affiche2=b1.toString()+" + "+b2.toString()+" - "+b3.toString()+" =";
        });
          break;  
      }
      case 3:{
          setState(() {
            reponse2=b1+(b2*b3);
          affiche2=b1.toString()+" + "+b2.toString()+" x "+b3.toString()+" =";
          });
          break;  
      }
      case 4:{
          setState(() {
            reponse2=(b1*b2)-b3;
          affiche2=b1.toString()+" x "+b2.toString()+" - "+b3.toString()+" =";
          });
          break;  
      }
      default:{
        setState(() {
          reponse2=(b1*b2)+b3;
          affiche2=b1.toString()+" x "+b2.toString()+" + "+b3.toString()+" =";
        });
        break;
      }
    }
  }

void parametreSigne3() {
    switch (signe3) {
    case 1:{
        setState(() {
          reponse3=c1+c2+c3;
        affiche3=c1.toString()+" + "+c2.toString()+" + "+c3.toString()+" =";
        });
        break;  
    }
    case 2:{
      setState(() {
        reponse3=(c1+c2)-c3;
        affiche3=c1.toString()+" + "+c2.toString()+" - "+c3.toString()+" =";
      });
        break;  
    }
    case 3:{
        setState(() {
          reponse3=c1+(c2*c3);
        affiche3=c1.toString()+" + "+c2.toString()+" x "+c3.toString()+" =";
        });
        break;  
    }
    case 4:{
        setState(() {
          reponse3=(c1*c2)-c3;
        affiche3=c1.toString()+" x "+c2.toString()+" - "+c3.toString()+" =";
        });
        break;  
    }
    default:{
      setState(() {
       reponse3=(c1*c2)+c3;
        affiche3=c1.toString()+" x "+c2.toString()+" + "+c3.toString()+" =";
      });
      break;
    }
    }
  }


  // msgbox
    Future<Null> msgBox3() async{
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
              Container(
                height: 400,
                width: 350,
                child: Column(
                  children:[
                  
                  // container contenant le text
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 300,
                        child: Center(child: text("Voulez-vous Quitter réellement la partie??", 22, Colors.yellow))
                      ),
                    ),
                  
                  // container qui contient le gif
                    Container(
                      margin: EdgeInsets.only(top:10),
                      height:200,
                      width:200,
                      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/emodji/23.jpg"),
            fit: BoxFit.fill
            ),
        ),
                    ),

                  // container contenant le bouton annuler et contunuer
                  Container(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      BoutionmsB(context: context, teaming: teaming, titre: "Annuler"),

                        Padding(padding: EdgeInsets.all(20)),
                       
                      BoutionmsB(context: context, teaming: teaming, titre: "Confirmer"),
                    ],
                  ))
                  ]
                ),
              )
             ],
          );
      });
  }

    Future<Null> msgBox2(String affiche1,int rep1, String affiche2, int rep2, String affiche3,int rep3,String bReponse, String image, String explication, String situation) async{
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
                Container(
              height: 350,
              width: 300,
                child: Stack(
                  children: [
                    // l'ombre
                    Container(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    Scrollbar(
                      child: ListView(
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
                                  Container(padding: EdgeInsets.all(10),margin: EdgeInsets.only(top:10),child: text(affiche1+rep1.toString(), 20, Colors.white)),
                                  Container(padding: EdgeInsets.all(5),margin: EdgeInsets.only(top:10),child: text(affiche2+rep2.toString(), 20, Colors.white)),
                                  Container(padding: EdgeInsets.all(5),margin: EdgeInsets.only(top:10),child: text(affiche3+rep3.toString(), 20, Colors.white)),

                                  Container(padding: EdgeInsets.all(10),margin: EdgeInsets.only(top:10),child: text(bReponse, 20, Colors.white)),
                                  Container(padding: EdgeInsets.all(10),margin: EdgeInsets.only(top:10,bottom:5),child: Center(child: text(explication, 20, Colors.white))),
                                  

                                 // boutton quitter
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
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
                                        child: Center(child: text(situation,20,Colors.white)),
                                    ) ,
                                  onTap: (){
                                    Navigator.pop(context);
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>MenuJeuneMatheu()));
                                  },
                                )
                                   ],
                                 ),
                              ],
                                  
                            ), 
                          )
                        ],
                      ),
                    ),
                  ],
                ),
            )                  
             ],
          );
      });
  }


}

