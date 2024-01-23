import 'package:advanced/storage/firebaseex/email_pass_auth/fire_function.dart';
import 'package:flutter/material.dart';
import 'login_fire.dart';

class Reg_Fire extends StatelessWidget {
  final pass_controller= TextEditingController();
  final email_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Register'),
      ),
      body: Column(
        children: [
          Text(
            'Hello! Login Here!!',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Username'),
            controller: email_controller,
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Password'),
            controller: pass_controller,
          ),
          SizedBox(
            height: 15,
          ),
          MaterialButton(
              onPressed: () {
                final email = email_controller.text.trim();
                final pswd = pass_controller.text.trim();
                FireBaseHelper().register(email: email, password: pswd).then((result) {
                  if(result == null) {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_Fire()));

                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
                  }
                });
              },

              child: Text('Register'),
              height: 70,
              minWidth: 120)
        ],
      ),
    );
  }
}