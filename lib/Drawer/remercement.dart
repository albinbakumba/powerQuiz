import 'package:alibali/ApparenceGenerale/Style/style.dart';
import 'package:flutter/material.dart';


class Btremerciment extends StatelessWidget {
  const Btremerciment({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          margin: EdgeInsets.only(top:10,bottom: 20,left: 120),
          padding: EdgeInsets.all(10),
        height: 60,
        width: 230,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            text("Mes Remerciment",20,Colors.white),
            Icon(Icons.send,size:30,color: Colors.amber,)
          ]
        ),
    ),
    onTap: (){
      msgBox(context, "Dedicace");
    },
      );
  }


  // msgbox
    Future<Null> msgBox(context, String titre) async{
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context){
          return new SimpleDialog(
            title: text2(titre, 20, Colors.white, TextAlign.center),
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),

        //contenue du showdialogue (messageBox)
        
          children: [
              // container principal
            Scrollbar(
              child: Container(
              height: 400,
              width: 370,
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
                                color: Colors.yellow,
                                child: Icon(Icons.perm_identity,size:100)
                            ),
                          ),

                        // container de l'explication
                          Container(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                Container(padding: EdgeInsets.all(15),margin: EdgeInsets.only(top:10),child: text2("          Ir Gogo SOKOMBE (sensei),Merci pour avoir su répondre à mes questions, pertinentes ou pas. Vous m’avez mis sur la voix et vous vous êtes assuré de mon épanouissement avec toutes humilités possibles.(Chaque détaille compte).", 20, Colors.white,TextAlign.left)),
                                Padding(padding: EdgeInsets.all(5)),
                                // linge 2
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    Container(
                                      height:50,
                                      width:50,
                                      color: Colors.yellow,
                                      child: Icon(Icons.perm_identity,size:50)
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(left:5),
                                      height:50,
                                      width: 200,
                                      color: Colors.black.withOpacity(0.5),
                                      child: Center(child: text2("Benjamin MUKENA",20, Colors.white,TextAlign.center))
                                    )
                                  ]
                                ),

                                Padding(padding: EdgeInsets.all(5)),
                                 // linge 3
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    Container(
                                      height:50,
                                      width:50,
                                      color: Colors.yellow,
                                      child: Icon(Icons.perm_identity,size:50)
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(left:5),
                                      height:50,
                                      width: 200,
                                      color: Colors.black.withOpacity(0.5),
                                      child: Center(child: text2("Parfait KAZADI",20, Colors.white,TextAlign.center))
                                    )
                                  ]
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                 // linge 4
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    Container(
                                      height:50,
                                      width:50,
                                      color: Colors.yellow,
                                      child: Icon(Icons.perm_identity,size:50)
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(left:5),
                                      height:50,
                                      width: 200,
                                      color: Colors.black.withOpacity(0.5),
                                      child: Center(child: text2("mardochee MBUYAMBA",20, Colors.white,TextAlign.center))
                                    )
                                  ]
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                 // linge 4
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    Container(
                                      height:50,
                                      width:50,
                                      color: Colors.yellow,
                                      child: Icon(Icons.perm_identity,size:50)
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(left:5),
                                      height:50,
                                      width: 200,
                                      color: Colors.black.withOpacity(0.5),
                                      child: Center(child: text2("blesing NZEMO",20, Colors.white,TextAlign.center))
                                    )
                                  ]
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                 // linge 4
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    Container(
                                      height:50,
                                      width:50,
                                      color: Colors.yellow,
                                      child: Icon(Icons.perm_identity,size:50)
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(left:5),
                                      height:50,
                                      width: 200,
                                      color: Colors.black.withOpacity(0.5),
                                      child: Center(child: text2("chizzy ngilo",20, Colors.white,TextAlign.center))
                                    )
                                  ]
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                 // linge 4
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    Container(
                                      height:50,
                                      width:50,
                                      color: Colors.yellow,
                                      child: Icon(Icons.perm_identity,size:50)
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(left:5),
                                      height:50,
                                      width: 200,
                                      color: Colors.black.withOpacity(0.5),
                                      child: Center(child: text2("samuel MALONGWE",20, Colors.white,TextAlign.center))
                                    )
                                  ]
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                 // linge 4
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    Container(
                                      height:50,
                                      width:50,
                                      color: Colors.yellow,
                                      child: Icon(Icons.perm_identity,size:50)
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(left:5),
                                      height:50,
                                      width: 200,
                                      color: Colors.black.withOpacity(0.5),
                                      child: Center(child: text2("Glodi PINGEDI",20, Colors.white,TextAlign.center))
                                    )
                                  ]
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                 // linge 4
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    Container(
                                      height:50,
                                      width:50,
                                      color: Colors.yellow,
                                      child: Icon(Icons.perm_identity,size:50)
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(left:5),
                                      height:50,
                                      width: 200,
                                      color: Colors.black.withOpacity(0.5),
                                      child: Center(child: text2("jordi LUAMBA",20, Colors.white,TextAlign.center))
                                    )
                                  ]
                                ),
                                 Padding(padding: EdgeInsets.all(5)),
                                 // linge 4
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    Container(
                                      height:50,
                                      width:50,
                                      color: Colors.yellow,
                                      child: Icon(Icons.perm_identity,size:50)
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(left:5),
                                      height:50,
                                      width: 200,
                                      color: Colors.black.withOpacity(0.5),
                                      child: Center(child: text2("Julio MALEKA",20, Colors.white,TextAlign.center))
                                    ),
                                  ]),
                                Padding(padding: EdgeInsets.all(5)),
                                 // linge 5
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    Container(
                                      height:50,
                                      width:50,
                                      color: Colors.yellow,
                                      child: Icon(Icons.perm_identity,size:50)
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(left:5),
                                      height:50,
                                      width: 200,
                                      color: Colors.black.withOpacity(0.5),
                                      child: Center(child: text2("Eric KADIMA",20, Colors.white,TextAlign.center))
                                    )
                                  ]
                                ),

                                Padding(padding: EdgeInsets.all(7)),
                                  InkWell(
                                    child: Container(
                                        margin: EdgeInsets.only(bottom:10),
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.7),
                                          borderRadius: BorderRadius.circular(30),
                                          border: Border.all(width:3,color: Colors.yellow)
                                        ),
                                        width: 150,
                                        height: 38,
                                        child: Center(child: text("Quitter",25,Colors.white)),
                                    ) ,
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                                  
                            ), 
                          )
                        ],
                      ),
                    ],
                ),
            ),
                 )
             ],
          );
      });
  }
  }