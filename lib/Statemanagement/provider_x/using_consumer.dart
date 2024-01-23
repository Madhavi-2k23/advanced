import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/counter_controller.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => Counterprovider(),
        child: MyHomePage(),
      ),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider with Consumer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counter Value:',
              style: TextStyle(fontSize: 18),
            ),
            // Using Consumer to listen to changes in CounterProvider
            Consumer<Counterprovider>(
              builder: (context, counterProvider, child) {
                return Text(
                  '${counterProvider.counter_value}',
                  style: const TextStyle(fontSize: 24,
                      fontWeight: FontWeight.bold),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Using Consumer to call the increment method
          Provider.of<Counterprovider>(context, listen: false).increment_count();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}