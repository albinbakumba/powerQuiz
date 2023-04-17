import 'package:alibali/ApparenceGenerale/Style/style.dart';
import 'package:flutter/material.dart';




class BoutonMsBox extends StatefulWidget {
  const BoutonMsBox({
    @override this.titre,
    @override this.cleDefini,
    });

  @override
  _BoutonMsBoxState createState() => _BoutonMsBoxState();
  final String titre;
  final String cleDefini;
}

class _BoutonMsBoxState extends State<BoutonMsBox> {
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
                            child:text(widget.titre,20,Colors.white)
                          ),
                        ),
                      onTap: (){
                        switch (widget.titre) {
                          case "Annuler":Navigator.pop(context);
                             break;
                          case "Confirmer":{
                                Navigator.pop(context);
                                Navigator.pop(context);
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