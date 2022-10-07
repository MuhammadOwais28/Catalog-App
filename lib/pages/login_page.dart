import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Welcome",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Username", hintText: "Enter Your Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      label: Text("Password"), hintText: "Enter Your Password"),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                ElevatedButton(
                  child: const Text("Login"),
                  // style: TextButton.styleFrom(),
                  onPressed: () {
                    //will be telling what to do when the button is pressed.
                    print("seekhna is start");
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
