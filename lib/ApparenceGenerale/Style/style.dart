import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// decoration de container 
BoxDecoration boxDecoration() {
     return BoxDecoration(
                border: Border.all(color:Colors.white,width:3),
                borderRadius: BorderRadius.circular(35),
                color: Colors.transparent
               );
   }


// la linge blache entre question et assertion
 Widget ligneBlance(double largeure) {
     return Center(
       child: Container(
              width: largeure,
              margin: EdgeInsets.only(bottom:10,top:15),
              height: 2,
              color: Colors.white,
            ),
     );
   }


// container en arriere plan
   Container arrierePlanContainer() {
     return Container(
        height: 250,
        color: Colors.green,
      );
   }


// gestionnaire de text
  Text text(String titre,double taille,Color couleur) {
    return Text(titre,
                style: GoogleFonts.inter(
                fontSize: taille,
                fontWeight: FontWeight.bold,
                color: couleur,
                
                )
          );
        }

  
  Text text2(String titre,double taille,Color couleur,TextAlign position) {
    return Text(titre,
                
                textAlign: position,
                style: GoogleFonts.inter(
                fontSize: taille,
                fontWeight: FontWeight.bold,
                color: couleur,
                
                )
          );
        }







// containu du message box
SimpleDialog contenueDuMsbox(String resultat, String icon, String text, BuildContext context) {
  return SimpleDialog(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),

          //titre du Msg BOX (resultat obtenu)
          title: Text(
            "you are $resultat",
            textAlign: TextAlign.center, // centre le titre
            //decoration du titre
            style: 
                TextStyle(
                  fontSize:25,
                  color:Colors.white
                )
              ),

          //contenue du showdialogue (messageBox)
          children: [
            
        // container de l'image 
            Container(
              width: 200,
              height: 220,
              child: Center(
                child: Image.asset(icon)
              )
              ),

        // text contenant le resultat de l'action
            Center(
              child: Container(
                margin: EdgeInsets.only(top:10,bottom:10),
                width: 300,
                height: 50,
                child: Text(
                text,
                textAlign: TextAlign.center, // centre le titre
                //decoration du titre
                style: 
                    TextStyle(
                      fontSize:20,
                      color:Colors.amber
                    )
                  ),
              ),
            ),

        // container du bouton continuer
          Center(
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber ,width:3),
                  borderRadius: BorderRadius.circular(30),
                  color:Colors.greenAccent,
                ),
                width:150,
                height: 40,
                child: Center(
                  child: Text("Contunuer",style: TextStyle(
                        fontSize:20,color:Colors.white),
                        textAlign: TextAlign.center,),
                ),
                ),
            onTap: (){
                  Navigator.pop(context);
            },

            ),
          ),
          ],
        );
}


