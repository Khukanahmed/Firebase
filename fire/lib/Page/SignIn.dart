import 'package:fire/Page/SignUp.dart';
import 'package:fire/Page/successfully.dart';
import 'package:fire/helper/auth_helpar.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _reset = TextEditingController();

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
                  child: Center(child: Text('Login')),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _password,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10)))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          final userest = _reset.text;

                        },
                        child: Text('Forget Password')),
                  ],
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      final signemail = _email.text;
                      final signpass = _password.text;
                      print(signemail);
                     var obj=AuthHelper();
                     obj.SignIn(signemail, signpass, context);
                    },
                    child: Text(' SignIn ')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('I have no Account'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: Text('SignUp')),
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
