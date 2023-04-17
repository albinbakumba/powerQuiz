import 'package:flutter/material.dart';
import 'pourcentageContainer.dart'; 



class TelechargementCercle extends StatelessWidget {
  const TelechargementCercle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder( 
        tween: Tween(begin: 0.0, end: 1.0),
        duration: Duration(seconds: 4), 
        builder: (context,value,child){

    double pourcentage=0.0;  // variable pourcentage
    pourcentage= (value*100);
          return Center(
     child: Container(
                    margin: EdgeInsets.only(top:150),

       child: Stack(
         children:[

          // l'animation
           Center(
             child: ShaderMask(
               
               shaderCallback: (rect){
                 return  SweepGradient(
                   colors: [Colors.yellow, Colors.grey.withAlpha(0)],
                   startAngle: 0.0,
                   endAngle: 3.14*2,
                   stops: [value,value],
                   center: Alignment.center
                   ).createShader(rect);
               },
             child: Container(
               width: 150,
               height: 150,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 border: Border.all(color:Colors.white,width:3),
                 color: Colors.amber,
               ) 
             ),
             ),
           ),

          // container pourcentage
        PourcentageContainer(pourcentage: pourcentage),
         ]
       ),
     ),
          );
        });
  }
}

