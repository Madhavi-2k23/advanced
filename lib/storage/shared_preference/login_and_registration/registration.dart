import 'package:advanced/storage/shared_preference/login_and_registration/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterShared extends StatefulWidget {
  @override
  State<RegisterShared> createState() => _RegisterSharedState();
}

class _RegisterSharedState extends State<RegisterShared> {
  var formkey = GlobalKey<FormState>();
  var uname_controller = TextEditingController();
  var pass_controller = TextEditingController();
  var ph_controller=TextEditingController();
  late  SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    validator: (phonenumber) {
                      if (phonenumber!.isEmpty || phonenumber.length < 10) {
                        return 'invalid phonenumber';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                TextFormField(
                  controller: uname_controller,
                ),
                TextFormField(
                  validator: (password){
                    if(password!.isEmpty||(password.length<6)){
                      return "Password is empty/Password length should be > 6";
                    }else{
                      return null;
                    }
                  },

                ),
                TextFormField(
                  controller: pass_controller,
                ),
                ElevatedButton(onPressed: () {
                  var valid = formkey.currentState!.validate();
                  if(valid==true){
                    storeData();
                  }
                }, child: Text('Register'))
              ],
            )),
      ),
    );
  }

  void storeData() async{
    String email=uname_controller.text;
    String password=pass_controller.text;
    int phone_num=ph_controller.text as int;
    preferences=await SharedPreferences.getInstance();
    preferences.setString("username", email);
    preferences.setString('password',password);
    preferences.setInt("phone ",phone_num);
    Navigator.of(context).push(MaterialPageRoute(builder:(context)=>LoginShared()));

  }
}