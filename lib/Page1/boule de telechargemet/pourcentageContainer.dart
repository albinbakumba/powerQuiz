import 'package:alibali/ApparenceGenerale/Style/style.dart';
import 'package:flutter/material.dart';



class PourcentageContainer extends StatelessWidget {
  const PourcentageContainer({
    Key key,
    @required this.pourcentage,
  }) : super(key: key);

  final double pourcentage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        border: Border.all(color:Colors.amber,width:3),
        shape: BoxShape.circle,
      ),
      child: Center(child: text(pourcentage.ceil().toString()+"%", 30, Colors.white)  ,
          ),
    ));
  }
}