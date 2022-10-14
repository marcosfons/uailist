import 'package:flutter/material.dart';
import 'package:uailist/src/core/database/app_database.dart';

class SupermarketsCard extends StatelessWidget {
  const SupermarketsCard({super.key, required this.supermarket});
  final Supermarket supermarket;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(supermarket.name),
      subtitle: Text(supermarket.address),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: supermarket.imageUrl != null
            ? NetworkImage(supermarket.imageUrl!)
            : null,
      ),
    );
  }
}
