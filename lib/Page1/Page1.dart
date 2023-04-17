
import 'package:alibali/ApparenceGenerale/apparition/DelaitAnnimation.dart';
import 'package:alibali/Page2/Page2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'boule de telechargemet/BoolArrierePlan.dart';
import 'boule de telechargemet/TelechargementCercle.dart';

class Page1 extends StatefulWidget {
  const Page1({ Key key }) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
// pourcentage
  int progressvalue=0;
  
   double visibilite1=0;  double visibilite2=1;

  Future<bool> goto()async{
   await Future.delayed( Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
        return Page2();
      }));
    });
    return true;
  }

  // initialisation
  @override
    void initState() {
      super.initState();
      goto();
    }

/*
  

  */


    /* 

    keyAlias "alibali"
    keyPassword "12300055"
    storeFile file ("")
    storePassword 
    */


  // chonomaitrage
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/60.png"),
            fit: BoxFit.fill
            ),
        ),
        child: Stack(
              children:[
                
          // text bien venue
            AnnimationDelait(child:Center(
              child: Container(
                margin: EdgeInsets.only(top: 350),
                child: Text("Conocido",
                    style: GoogleFonts.kantumruy(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    )
              ),
            ),
            delay:5,
            direction:0.5
          ),

          // arriere plan de la bool
            AnnimationDelait(child:BoolArrierePlan(),delay:5,direction:0.5),

          // cercle de telechargement 
             AnnimationDelait(child:TelechargementCercle(),delay:5,direction:0.5),
           
          ]
        ),
      )
    );
  }
}