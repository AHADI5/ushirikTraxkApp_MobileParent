import 'package:flutter/material.dart';

class ParentLoginPage extends StatefulWidget {
  const ParentLoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

//Defining a state class
//this class holds data related to the form

class LoginPageState extends State<ParentLoginPage> {
  //Creating a key that identifies uniquely the form widget
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
         
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TextFormField(
              //The validator receives the text entred by the user
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(),
                hintText: "Email",
                prefixIcon: Icon(Icons.email),
              ),
              onChanged: (String value) {},
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'veuiller entrer votre nom';
                }
                return null; // for valid input
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: TextFormField(
              //The validator receives the text entred by the user
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(),
                hintText: "Mot de passe",
                prefixIcon: Icon(Icons.password_sharp),
              ),
              onChanged: (String value) {},
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'veuiller entrer votre mot de passe';
                }
                return null; // for valid input
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: MaterialButton(
                minWidth: double.infinity,
                padding: const EdgeInsets.all(20),
                color: const Color.fromRGBO(116, 62, 228, 1),
                textColor: Colors.white,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('connexion')));
                  }
                },
                child: const Text("Login")),
          )
        ],
      ),
    );
  }
}
