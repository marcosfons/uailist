import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/screens/supermarkets/supermarkets_controller.dart';
import 'package:uailist/src/screens/supermarkets/widget/supermarket_card.dart';
import 'package:uailist/src/shared/widgets/future_load_elevated_button.dart';
import 'package:uailist/src/shared/widgets/main_screen_title.dart';

class SupermarketsScreen extends StatefulHookConsumerWidget {
  const SupermarketsScreen({super.key});

  @override
  SupermarketsScreenState createState() => SupermarketsScreenState();
}

class SupermarketsScreenState extends ConsumerState<SupermarketsScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(supermarketController).loadSupermarkets();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final controller = ref.watch(supermarketController);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MainScreenTitle(
              title: 'Supermercados',
              centered: false,
              trailing: IconButton(
                iconSize: 30,
                icon: Icon(
                  Icons.add,
                  color: themeData.colorScheme.primary,
                ),
                onPressed: () {
                  GoRouter.of(context).push('/supermarkets/new');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: TextField(
                onChanged: controller.changeSearch,
                //controller: editingController,
                decoration: InputDecoration(
                    labelText: "Procurar jogadores",
                    hintText: "Informe o nome do jogador",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: StreamBuilder<List<Supermarket>>(
                stream: controller.supermarketsList(),
                builder: (context, snapshot) {
                  if (snapshot.data != null) {
                    return RefreshIndicator(
                      onRefresh: controller.loadSupermarkets,
                      child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SupermarketCard(
                            supermarket: snapshot.data![index],
                            onTap: () {
                              GoRouter.of(context).push(
                                  '/supermarkets/supermarket',
                                  extra: snapshot.data![index]);
                            },
                          );
                        },
                      ),
                    );
                  }

                  if (controller.error != null) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          controller.error!,
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        FutureLoadElevatedButton(
                          onPressed: controller.loadSupermarkets,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 4),
                            child: Text(
                              'Tentar novamente',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    );
                  }

                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
