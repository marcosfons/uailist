import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 18,
                top: 18,
              ),
              child: Text(
                'Perfil',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 32,
                ),
              ),
            ),
            Expanded(
              child: const Center(
                child: Text('Tela de perfil'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
