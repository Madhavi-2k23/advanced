
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyDfl5muTTtyBMfrHJ6yZhc_Pfpip75PIqQ",
        appId: "1:774165267347:android:34259b6204946d73a21e66",
        messagingSenderId: "",
        projectId:"fir-3c466" )
  );

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login_Fire(),
  ));
}

class Login_Fire extends StatelessWidget {
  var email_controller = TextEditingController();
  var pass_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        titleTextStyle: TextStyle(fontSize: 20),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Here!!',
              style: TextStyle(fontSize: 25, color: Colors.blue),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: email_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: pass_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your password'),
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                )),
            TextButton(
              onPressed: () {},
              child: Text(
                'Not a User? Register Here!!!',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}