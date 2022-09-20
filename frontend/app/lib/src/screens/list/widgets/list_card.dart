import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final String listName;
  final String listDate;
  final double totalItems;
  final double itemsTaken;

  ListCard(
      {super.key,
      required this.totalItems,
      required this.itemsTaken,
      required this.listName,
      required this.listDate});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 0),
      color: Color.fromARGB(255, 185, 184, 184),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 10, right: 0, bottom: 5),
            child: Text(
              listName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff717171),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
            child: Text(
              listDate,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff8D8D8D),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, top: 5, right: 0, bottom: 15),
                    child: Stack(
                      children: [
                        Container(
                          height: 10,
                          constraints:
                              BoxConstraints(maxWidth: double.infinity),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          height: 10,
                          constraints: BoxConstraints(
                            maxWidth: 228 *
                                itemsTaken /
                                totalItems, /* MediaQuery.of(context).size.width * percent*/
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 5, top: 0, right: 15, bottom: 14),
                child: Text(
                  '${itemsTaken.toInt()}/${totalItems.toInt()}',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
