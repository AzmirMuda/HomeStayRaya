import 'package:flutter/material.dart';
import 'package:homestay_raya1/views/loginscreen.dart';
import 'package:homestay_raya1/views/registrationscreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeStay Raya",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic)),
        actions: [
          IconButton(
              onPressed: _registration,
              icon: const Icon(Icons.app_registration)),
              IconButton(
              onPressed: _loginForm,
              icon: const Icon(Icons.login))
        ],
      ),
      body: const Center(
        child: Text("Main page"),
      ),
    );
  }

  void _registration() {
    Navigator.push(context,
        MaterialPageRoute(builder: ((context) => const RegistrationScreen())));
  }
  

  void _loginForm() {
    Navigator.push(context,
        MaterialPageRoute(builder: ((context) => const loginscreen())));
  }
}
