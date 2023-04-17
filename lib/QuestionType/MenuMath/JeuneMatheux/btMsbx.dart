import 'dart:async';

import 'package:alibali/ApparenceGenerale/Style/style.dart';
import 'package:alibali/Page2/Page2.dart';
import 'package:flutter/material.dart';



class BoutionmsB extends StatelessWidget {
  const BoutionmsB({
    Key key,
    @required this.context,
    @required this.teaming,
    @required this.titre,
  }) : super(key: key);

  final BuildContext context;
  final Timer teaming;
  final String titre;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
                        child: Container(
                          margin: EdgeInsets.only(top:10),
                          height:60,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(20),
                            color:Colors.green.withOpacity(0.7),
                          ),
                          child: Center(
                            child:text(titre,20,Colors.white)
                          ),
                        ),
                      onTap: (){
                        switch (titre) {
                          case "Annuler":Navigator.pop(context);
                             break;
                          case "Confirmer":{
                                teaming.cancel();
                                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Page2()));
                            break;
                            }
                          case "Resseyer":Navigator.pop(context);
                            break;
                          case "Arreter":{
                              Navigator.pop(context);
                              Navigator.pop(context);
                            break;
                            }
                        }
                },
            );
  }
}