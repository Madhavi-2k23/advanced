import 'dart:js';

import 'package:advanced/Statemanagement/provider/auth_provider.dart';
import 'package:advanced/Statemanagement/provider/counter_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Count_provider()),
          ChangeNotifierProvider(create: (context) => Auth_provider())
        ],
      )));
}



class Multi_provider extends ChangeNotifier{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Counter Value",
            style: TextStyle(fontSize: 20),
            ),ElevatedButton(onPressed: (){
              Provider.of<Count_provider>(context,listen: false).increment();
            },
                child: const Text("Increment Counter") ),
            Text("Count value:${Provider.of(context).count}",
              style: const TextStyle(fontSize: 20),

            ),
            const SizedBox(height: 30,),
            Text("Auth details",
            style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(onPressed: (){
              Provider.of<Auth_provider>(context).login
                  ?Provider.of<Auth_provider>(context).loggedOut()
                  :Provider.of<Auth_provider>(context).logedin();
            }, child: Text("Switch Login")),
            Consumer<Auth_provider>(builder: (context,authprovider,child){
              return Text(
                'User is ${authprovider.login?"loggedin":"loggedout"}'
              );
            }
            )
          ],

        ),
      ),

    );
  }
}