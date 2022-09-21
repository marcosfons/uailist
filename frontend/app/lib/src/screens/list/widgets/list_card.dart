import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListCard extends StatelessWidget {
  final String listName;
  final DateTime listDate;
  final double totalItems;
  final double itemsTaken;
  final void Function() fun;

  ListCard({
    super.key,
    required this.totalItems,
    required this.itemsTaken,
    required this.listName,
    required this.listDate,
    required this.fun,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 0),
      color: Color(0xfff5f5f5),
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        side: BorderSide.none,
      ),
      child: InkWell(
        onTap: fun,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
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
                DateFormat.yMd().format(listDate),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: Color(0xffd9d9d9),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
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
      ),
    );
  }
}
