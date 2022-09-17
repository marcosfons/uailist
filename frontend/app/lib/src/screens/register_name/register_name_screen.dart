import 'package:flutter/material.dart';

class RegisterNameScreen extends StatelessWidget {
  const RegisterNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text(
                "UaiList",
                style: TextStyle(color: Color(0xff0eb400), fontSize: 70),
              ),
            ),
          ),
          Row(
            children: const [
              SizedBox(
                width: 10,
              ),
              Text("Informe seu nome de usuário:"),
            ],
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                side: BorderSide(color: Colors.black.withOpacity(0.1))),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Nome do usuário"),
                  fillColor: Color(0xfff5f5f5),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0eb400),
                ),
                child: const Text("Salvar"),
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
        ],
      ),
    );
  }
}
