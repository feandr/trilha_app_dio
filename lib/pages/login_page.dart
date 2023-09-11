import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 254, 255, 255),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
                const Icon(
                  Icons.person,
                  size: 150,
                  color: Colors.red,
                ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                height: 40,
                width: double.infinity,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                  Expanded(flex: 2, child: Text("Informe seu e-mail:")),
                  Expanded(flex: 3, child:Text("E-mail")),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                height: 40,
                width: double.infinity,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                  Expanded(flex: 2, child: Text("Informe a:")),
                  Expanded(flex: 3, child:Text("Senha")),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                height: 40,
                width: double.infinity,
                alignment: Alignment.center,
                color: Colors.green,
                child: const Text("Botão"),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                height: 40,
                width: double.infinity,
                alignment: Alignment.center,
                child: const Text("Cadastro", selectionColor: Colors.amber,),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
