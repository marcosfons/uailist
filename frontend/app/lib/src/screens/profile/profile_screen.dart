import 'package:flutter/material.dart';
import 'package:uailist/src/screens/profile/widgets/delete_account_confirm_dialog.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 35,
                right: 10,
                left: 0,
                bottom: 40,
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(
                    opacity: 0,
                    child: IgnorePointer(
                      child: PopupMenuButton(
                        itemBuilder: (context) => [
                          const PopupMenuItem(
                            child: Text('Escluir conta'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Perfil',
                      textAlign: TextAlign.center,
                      style: themeData.textTheme.headline6,
                    ),
                  ),
                  PopupMenuButton(
                    position: PopupMenuPosition.over,
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: const Text('Escluir conta'),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return const DeleteAccoutnConfirmeDialog();
                            },
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  radius: 80,
                  child: const Icon(
                    Icons.person,
                    size: 80,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.photo_camera),
                  iconSize: 40,
                  onPressed: () {},
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 35, right: 10, left: 20, bottom: 0),
              child: ListTile(
                leading: const Icon(
                  Icons.person,
                  size: 30,
                ),
                title: const Text(
                  'Nome',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: const Text(
                  'João',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.edit),
                  iconSize: 30,
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).colorScheme.primary,
                ),
                fixedSize: MaterialStateProperty.all(
                  const Size(150, 50),
                ),
              ),
              child: const Text(
                'Sair',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
