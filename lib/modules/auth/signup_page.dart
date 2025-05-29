import 'package:flutter/material.dart';
import '../../core/widgets/custom_input.dart';
import '../../core/widgets/custom_button.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Cadastre-se", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 32),
              CustomInput(controller: nameController, hintText: "Nome"),
              const SizedBox(height: 16),
              CustomInput(controller: emailController, hintText: "Email"),
              const SizedBox(height: 16),
              CustomInput(controller: passwordController, hintText: "Senha", obscureText: true),
              const SizedBox(height: 32),
              CustomButton(text: "Cadastrar", onTap: () {
                Navigator.pushReplacementNamed(context, '/home');
              }),
            ],
          ),
        ),
      ),
    );
  }
}