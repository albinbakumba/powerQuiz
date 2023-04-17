import 'package:shared_preferences/shared_preferences.dart';
//import 'package:flutter/material.dart';

  SharedPreferences sharedPreferences;
  initshare() async {
  // appelle cette methode au debut de la methode main
  sharedPreferences = await SharedPreferences.getInstance();
}


shareset(key, value) {
  sharedPreferences.setString(key, value);
}

shareget(key) {
  return sharedPreferences.get(key);
}








// Stockage preference

void sauvergarder(String cle, int valeur) async {
    //SharedPreferences.setMockInitialValues({});
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // stocage
    await prefs.setInt(cle, valeur);

  }

//recuperation preference
void recuperation(String cle, int valeur) async{
  final prefs = await SharedPreferences.getInstance();
  valeur= prefs.getInt(cle);

}