import 'package:flutter/material.dart';

class DeleteAccoutnConfirmeDialog extends StatelessWidget {
  const DeleteAccoutnConfirmeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Tem Certeza'),
      content: const Text('Isso ira apagar todos os seus dados'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Cancela',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          ),
          child: const Text('Deletar'),
        ),
      ],
    );
  }
}
