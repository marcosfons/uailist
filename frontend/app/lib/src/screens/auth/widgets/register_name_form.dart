import 'package:flutter/material.dart';

class RegisterNameForm extends StatelessWidget {
  const RegisterNameForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const Card(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                label: Text("Nome do usuário"),
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
              child: const Text("Salvar"),
            ),
          ),
        ),
        const SizedBox(
          height: 200,
        ),
      ],
    );
  }
}
