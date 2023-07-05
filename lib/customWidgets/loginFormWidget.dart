// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:the_ev_life_app/customClasses/formData.dart';

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

  final myController = TextEditingController();
  final myController2 = TextEditingController();

  @override
  void dispose(){
    //clean up the controller when the widget is disposed
    myController.dispose();
    myController2.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          //Add TextFormFields and ElevatedButton here
          SizedBox(
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
            controller: myController,
            decoration: const InputDecoration(
              hintText: 'Username',
            ),
          ),
          SizedBox(
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
            controller: myController2,
            decoration: const InputDecoration(
              hintText: 'Password',
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              //Validate returns true if form is valid, or false otherwise
              if(_formKey.currentState!.validate()){
                //if the form is valid, display snackbar.
                // ScaffoldMessenger.of(context).showSnackBar(
                //    SnackBar(content: Text('Username: ${myController.text}\nPassword: ${myController2.text}')),
                // );
                Navigator.pushNamed(context, '/loading', arguments: {
                  'username': myController.text,
                  'password':myController2.text,
                  'formKey':_formKey.toString()
                  });
              }
            }, 
            child: const Text(
              'Submit',
              style: TextStyle(
                fontSize: 20.0
              ),)
            ),
            // Text(myController.text())
        ],
      ),
    );
  }
}