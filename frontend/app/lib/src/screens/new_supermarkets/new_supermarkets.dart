import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewSupermarkets extends StatefulWidget {
  const NewSupermarkets({super.key});

  @override
  State<NewSupermarkets> createState() => _NewSupermarketsState();
}

class _NewSupermarketsState extends State<NewSupermarkets> {
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: null,
                  ),
                  Icon(Icons.photo_camera, size: 25),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 0, right: 15, bottom: 15),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Endereço'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 0, right: 15, bottom: 15),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Latitudo'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 0, right: 15, bottom: 30),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Longitude'),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  GoRouter.of(context).go('/supermarkets');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: themeData.colorScheme.primary,
                  fixedSize: const Size(150, 50),
                ),
                child: const Text(
                  'Enviar',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
