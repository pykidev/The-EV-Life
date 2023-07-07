import 'package:flutter/material.dart';
// import 'package:the_ev_life_app/customClasses/formData.dart';
// import 'package:the_ev_life_app/pages/loading.dart';
// import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:the_ev_life_app/firebaseUtilityFuncs/auth.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm>{
  // Define a global key that uniquely identifies the form widget
  //and allows validation of the form
  //Note: This is a 'GlobalKey<FormState>'
  final _formKey = GlobalKey<FormState>();
  String? errorMessage = '';
  // bool isLogin = true;

  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController pwdCtrl = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(email: emailCtrl.text, password: pwdCtrl.text);
    }
    on FirebaseAuthException catch(e) {
      setState((){
        errorMessage = e.message;
      });
    }
  }

  Widget _errorMessage(){
    return Text(errorMessage == '' ? '': '$errorMessage');
  }
  

  // final myController = TextEditingController();
  // final myController2 = TextEditingController();

  // final LoginFormData formData;

  // const LoginFormState({super.key, required this.for})

  @override
  void dispose(){
    //clean up the controller when the widget is disposed
    emailCtrl.dispose();
    pwdCtrl.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          //Add TextFormFields and ElevatedButton here
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            //the validator receives the text that the user has entered
            validator: (value) {
              if(value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            controller: emailCtrl,
            decoration: const InputDecoration(
              hintText: 'Email',
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            //the validator receives the text that the user has entered
            validator: (value) {
              if(value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            controller: pwdCtrl,
            obscureText: true,
            obscuringCharacter: '\u2022',
            decoration: const InputDecoration(
              hintText: 'Password',
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              //Validate returns true if form is valid, or false otherwise
              if(_formKey.currentState!.validate()){
                signInWithEmailAndPassword();
              }
            }, 
            child: const Text(
              'Submit',
              style: TextStyle(
                fontSize: 20.0
              ),)
            ),
            const SizedBox(
              height: 20.0
            ),
            _errorMessage(),
            // Text(myController.text())
        ],
      ),
    );
  }
}