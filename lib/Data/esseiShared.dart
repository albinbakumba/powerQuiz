import 'package:alibali/Data/SharedPreferences.dart';
import 'package:flutter/material.dart';


/*  cette page est composer de deux ligne
    ligne 1: contient le textfield pour saisir une valeur , une foie cliquer sur le bouton
    save, la variable valeur recupers la valeur saisie et le sauvegarde dans le Shared_Preferences.

    des qu'on click sur recuper la case a droite , a la ligne doit afficher la valeur saisi dans le Shared preferences.

 */



class EsseiShared extends StatefulWidget {
  const EsseiShared({ Key key }) : super(key: key);

  @override
  _EsseiSharedState createState() => _EsseiSharedState();
}

class _EsseiSharedState extends State<EsseiShared> {

//////////////////////////////////// share pref

/*shareset(key, value) {
  sharedPreferences.setString(key, value);
}

shareget(key) {
  return sharedPreferences.get(key);
}*/
  
  int valeur=0;
  int sorti=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("essei Shared"),
        centerTitle: true,
      ),


      body:  ListView(
        children: [


        // container de deux champ textfield et container d'affichage de la valeur recuperer
          Container(
            margin:  EdgeInsets.only(top: 30),
            color: Colors.yellow,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                // container du textfield
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.only(left:20),
                  width: 100,
                  child: TextField(
                    onChanged:(value){
                        setState(() {
                          valeur=int.parse(value);
                        });
                    },
                  ),
                ),

                // container pour affichage
                Container(
                  margin: EdgeInsets.only(left:80),
                  color: Colors.white,
                  height:50,
                  width:100,
                  child: Text(sorti.toString(),style: TextStyle(fontSize:20),),
                )
              ]
            ),
          ),


        // container qui contient la ligne de deux bouttons(save et recuper)
           Container(
            margin:  EdgeInsets.only(top: 30),
            color: Colors.yellow,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[

                // container save
                InkWell(
                    child: Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(left:20),
                    width: 100,
                    height: 50,
                    child: Center(
                      child: Text("save",style: TextStyle(
                        fontSize:20
                      )),
                    )
                  ),
                onTap: (){
                  print("valeur= $valeur");
                  setState(() {
                     shareset("sauve", valeur.toString());
                  });
                },
                ),

                // container recuper
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(left:80),
                    color: Colors.white,
                    height:50,
                    width:100,
                    child: Center(child: Text("recuper",style: TextStyle(
                      fontSize:20
                    ),)),
                  ),
                onTap: ()async{
                   print("recuperation= ");
                    sorti=int.parse(await shareget("sauve"));
                         setState(() {
                   });
List<String> list1=[
  "a","b","a"];

  List<String>list2=[];

// fonction pour eviter le doublon
list1.forEach((item) { 
   if(
     list2.firstWhere((element) => element==item,orElse: () => null,   
     )==null ){
     list2.add(item);
   }
});

list2.forEach((element) {
  print(element);
});



                },
                )
              ]
            ),
          )
        ],
      ),
      
    );
  }
}