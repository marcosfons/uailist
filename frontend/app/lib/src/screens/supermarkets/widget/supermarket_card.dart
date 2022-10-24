import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:uailist/src/core/database/app_database.dart';

class SupermarketCard extends StatelessWidget {
  const SupermarketCard({super.key, required this.supermarket, this.onTap});

  final Supermarket supermarket;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(supermarket.name),
      subtitle: Text(supermarket.address),
      onTap: onTap,
      isThreeLine: true,
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.grey,
        backgroundImage: supermarket.imageUrl != null
            ? CachedNetworkImageProvider(supermarket.imageUrl!)
            : null,
      ),
    );
  }
}
