import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/parent_login_form.dart';

class LoginMaterialPage extends StatelessWidget {
  const LoginMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Maintain vertical centering
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align content to the left
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 20.0, bottom: 10.0), // Adjust padding
                child: Text(
                  "Se connecter",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ParentLoginPage(), // Maintain original Column structure
            ],
          ),
        ));
  }
}
