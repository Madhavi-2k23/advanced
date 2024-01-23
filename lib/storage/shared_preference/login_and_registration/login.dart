import 'package:advanced/storage/shared_preference/login_and_registration/home.dart';
import 'package:advanced/storage/shared_preference/login_and_registration/registration.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginShared extends StatefulWidget {
  @override
  State<LoginShared> createState() => _LoginSharedState();
}

class _LoginSharedState extends State<LoginShared> {
  var formkey = GlobalKey<FormState>();
  var uname_controller = TextEditingController();
  var pass_controller = TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
            key: formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: uname_controller,
                ),
                TextFormField(
                  controller: pass_controller,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Login')),
                TextButton(onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegisterShared()));
                },child: Text("Don't you have a account ? Register here!!"),
                )
              ],
            )),
      ),
    );
  }

void validateInput() async{
  String uname= uname_controller.text;
  String pass= pass_controller.text;
  preferences = await SharedPreferences.getInstance();
  preferences.setBool("new user", false);

  String? stored_uname=preferences.getString("username");
  String? stored_pass=preferences.getString("password");

  if(stored_uname==uname&&stored_pass==pass){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Shared_Home()));
  }


}
}