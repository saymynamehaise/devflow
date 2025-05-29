import 'package:flutter/material.dart';
import 'package:crudapp/core/widgets/custom_input.dart';
import '../../core/widgets/custom_button.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

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
              const Text("Entrar", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 32),
              CustomInput(controller: emailController, hintText: "Email"),
              const SizedBox(height: 16),
              CustomInput(controller: passwordController, hintText: "Senha", obscureText: true),
              const SizedBox(height: 32),
              CustomButton(text: "Entrar", onTap: () {
                Navigator.pushReplacementNamed(context, '/home');
              }),
              const SizedBox(height: 16),
              Center(
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/signup'),
                  child: const Text("Não tem uma conta? Cadastre-se", style: TextStyle(color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
