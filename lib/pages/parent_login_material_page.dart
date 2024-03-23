import 'dart:ffi';

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Positioned(
                  left: 3444400,
                  child: Text(
                    "Se connecter",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              ParentLoginPage()
            ],
          ),
        ));
  }
}
