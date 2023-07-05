// // ignore_for_file: depend_on_referenced_packages

// import 'package:flutter/material.dart';
// import 'package:location_app_net_ninjas/pages/choose_location.dart';
// import 'package:location_app_net_ninjas/pages/home.dart';
// import 'package:location_app_net_ninjas/pages/loading.dart';

// void main() => runApp(MaterialApp(
//   initialRoute: '/',
//   routes: {
//     '/': (context) => Loading(),
//     '/home': (context) => Home(),
//     '/location': (context) => ChooseLocation(),
//   }
// ));


import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('Flutter Form'),
      centerTitle: true,
    ) ,
    body: const Padding(
      padding: EdgeInsets.all(25.0),
      child:MyCustomForm())
    ,)
));

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() => MyCustomFormState();
}

class MyCustomFormState extends State<MyCustomForm>{
  // Define a global key that uniquely identifies the form widget
  //and allows validation of the form
  //Note: This is a 'GlobalKey<FormState>'
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          //Add TextFormFields and ElevatedButton here
          TextFormField(
            //the validator receives the text that the user has entered
            validator: (value) {
              if(value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            decoration: const InputDecoration(
              hintText: 'Username',
            ),
          ),
          TextFormField(
            //the validator receives the text that the user has entered
            validator: (value) {
              if(value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            decoration: const InputDecoration(
              hintText: 'Password',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //Validate returns true if form is valid, or false otherwise
              if(_formKey.currentState!.validate()){
                //if the form is valid, display snackbar.
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
              }
            }, 
            child: const Text('Submit')
            ),
        ],
      ),
    );
  }
}