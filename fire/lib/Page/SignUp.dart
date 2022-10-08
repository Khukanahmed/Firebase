import 'package:fire/Page/SignIn.dart';
import 'package:fire/Page/successfully.dart';
import 'package:fire/helper/auth_helpar.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  TextEditingController _signupemail = TextEditingController();
  TextEditingController _signupass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: Center(child: Text('SignUp')),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _signupemail,
                  decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _signupass,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      final usermail = _signupemail.text;
                      final userpass = _signupass.text;

                      var object = AuthHelper();
                      object.signUp(usermail, userpass, context);
                      _signupass.clear();
                      _signupemail.clear();
                    },
                    child: Text(' SignUp ')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('I have an Account'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignIn()));
                        },
                        child: Text('SignIn')),
                  ],
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
