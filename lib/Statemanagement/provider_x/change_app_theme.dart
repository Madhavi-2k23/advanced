import 'dart:js';

import 'package:advanced/Statemanagement/provider_x/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(ChangeNotifierProvider(create: (context)=>Themeprovider(),child: MyApp1(),));}
  class MyApp1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return MaterialApp(
  theme: Provider.of<Themeprovider>(context ).isDarktheme
  ?ThemeData.dark()
      : ThemeData.light(),
  darkTheme: ThemeData.dark(),
  home: App_theme_changer()
  );
  }
  }

class App_theme_changer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          Provider.of<Themeprovider>(context,listen: false).swiththeme();
        },
            child: Text("Switch theme"))
      ),
    );
  }
}

