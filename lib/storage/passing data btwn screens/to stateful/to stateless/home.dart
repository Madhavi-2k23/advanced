import 'package:advanced/storage/passing%20data%20btwn%20screens/to%20stateful/Statefulscreen.dart';
import 'package:advanced/storage/passing%20data%20btwn%20screens/to%20stateful/to%20stateless/Stateless%20screen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Datahome(),));
}
class Datahome extends StatelessWidget {
  String name=("Luminar");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data passing"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Screen2(name:name,place:"kakkanad")));
            }, child: const Text("to Stateless Screen"),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Screen1(name:name,place:"kakkanad")));
            }, child: const Text("to Stateful Screen"),),
          ],
        ),
      ),
    );
  }
}
