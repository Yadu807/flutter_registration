import 'package:flutter/material.dart';

class Registrationpage extends StatelessWidget {
  const Registrationpage({super.key});

  @override
  Widget build(BuildContext context) {
    // Create focus nodes
    final usernameFocusNode = FocusNode();
    final passwordFocusNode = FocusNode();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "WELCOME BACK",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Enter your credentials to login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50),
                TextField(
                  focusNode: usernameFocusNode,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 236, 200, 243),
                    hintText: "Username",
                    hintStyle: const TextStyle(color: Colors.black26),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onEditingComplete: () {
                    // Move focus to the next field
                    FocusScope.of(context).requestFocus(passwordFocusNode);
                  },
                ),
                const SizedBox(height: 20),
                TextField(
  focusNode: passwordFocusNode,
  obscureText: true, // Masks the input for password
  decoration: InputDecoration(
    filled: true,
    fillColor: const Color.fromARGB(255, 236, 200, 243),
    hintText: "Password",
    hintStyle: const TextStyle(color: Colors.black26),
    prefixIcon: const Icon(
      Icons.password,
      color: Colors.black,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    ),
  ),
  onEditingComplete: () {
    FocusScope.of(context).unfocus(); // Dismiss keyboard
  },
)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
