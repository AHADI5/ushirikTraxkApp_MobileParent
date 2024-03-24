import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:show_hide_password/show_hide_password.dart';

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
              decoration: InputDecoration(
                  isDense: true,
                  prefixIcon: const Icon(Icons.email),
                  hintText: "Email",
                  hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Colors.black38, fontWeight: FontWeight.w500),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black38, width: 1),
                      borderRadius: BorderRadius.circular(12)),
                  counterText: ""),
              onChanged: (String value) {},
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'veuiller entrer votre Email';
                }
                return null; // for valid input
              },
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: ShowHidePassword(passwordField: ((hidePassword) {
                return TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: hidePassword,
                  showCursor: false,
                  decoration: InputDecoration(
                      isDense: true,
                      prefixIcon: const Icon(Icons.lock),
                      hintText: "Entre Mot de passe",
                      hintStyle: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(
                              color: Colors.black38,
                              fontWeight: FontWeight.w500),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black12, width: 1),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black38, width: 1),
                          borderRadius: BorderRadius.circular(12)),
                      counterText: ""),
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                  onChanged: (String value) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Veuiller entrer un mot de passe";
                    }
                    return null;
                  },
                );
              }))),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: MaterialButton(
                minWidth: double.infinity,
                padding: const EdgeInsets.all(13),
                color: const Color.fromRGBO(66, 160, 237, 1),
                textColor: Colors.white,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Connexion')),
                    );
                  }
                },
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10.0), // Adjust as desired
                ),
                child: const Text(
                  "connexion",
                  style: TextStyle(fontSize: 23),
                ),
              )),
        ],
      ),
    );
  }
}
