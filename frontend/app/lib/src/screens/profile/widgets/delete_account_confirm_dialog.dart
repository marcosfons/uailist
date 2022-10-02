import 'package:flutter/material.dart';

class DeleteAccoutnConfirmeDialog extends StatelessWidget {
  const DeleteAccoutnConfirmeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Tem Certeza'),
      content: Text('Isso ira apagar todos os seus dados'),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Cancela",
              style: TextStyle(color: Colors.blue),
            )),
        ElevatedButton(
          onPressed: () {},
          child: Text("Deletar"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          ),
        ),
      ],
    );
  }
}
