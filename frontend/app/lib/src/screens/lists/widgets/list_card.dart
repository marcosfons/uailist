import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListCard extends StatelessWidget {
  final String listName;
  final DateTime listDate;
  final double totalItems;
  final double itemsTaken;
  final void Function() onPressed;

  const ListCard({
    super.key,
    required this.totalItems,
    required this.itemsTaken,
    required this.listName,
    required this.listDate,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 0),
      color: const Color(0xfff5f5f5),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        side: BorderSide.none,
      ),
      child: InkWell(
        onTap: onPressed,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 10, top: 10, right: 0, bottom: 5),
              child: Text(
                listName,
                style: const TextStyle(
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
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xff8D8D8D),
                ),
              ),
            ),
            const SizedBox(
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
                                const BoxConstraints(maxWidth: double.infinity),
                            decoration: const BoxDecoration(
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
                                  const BorderRadius.all(Radius.circular(12)),
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 5, top: 0, right: 15, bottom: 14),
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



// class ListCard extends StatelessWidget {
//   final BuyListWithProducts buyList;
//   final Function()? onPressed;

//   const ListCard({
//     super.key,
//     required this.buyList,
//     this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Card(
//       margin: const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 0),
//       color: const Color(0xfff5f5f5),
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(12)),
//         side: BorderSide.none,
//       ),
//       child: InkWell(
//         onTap: onPressed,
//         borderRadius: const BorderRadius.all(Radius.circular(12)),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding:
//                   const EdgeInsets.only(left: 10, top: 10, right: 0, bottom: 5),
//               child: Text(
//                 buyList.buyList.name,
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xff717171),
//                 ),
//               ),
//             ),
//             Padding(
//               padding:
//                   const EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
//               child: Text(
//                 DateFormat.yMd().format(buyList.buyList.createdAt),
//                 style: const TextStyle(
//                   fontSize: 14,
//                   color: Color(0xff8D8D8D),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 8,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                   child: Padding(
//                       padding: const EdgeInsets.only(
//                           left: 15, top: 5, right: 0, bottom: 15),
//                       child: Stack(
//                         children: [
//                           Container(
//                             height: 10,
//                             constraints:
//                                 const BoxConstraints(maxWidth: double.infinity),
//                             decoration: const BoxDecoration(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(12)),
//                               color: Color(0xffd9d9d9),
//                             ),
//                           ),
//                           Container(
//                             height: 10,
//                             constraints: BoxConstraints(
//                               maxWidth: 228 *
//                                   buyList
//                                       .progress, /* MediaQuery.of(context).size.width * percent*/
//                             ),
//                             decoration: BoxDecoration(
//                               borderRadius:
//                                   const BorderRadius.all(Radius.circular(12)),
//                               color: theme.colorScheme.primary,
//                             ),
//                           ),
//                         ],
//                       )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(
//                       left: 5, top: 0, right: 15, bottom: 14),
//                   child: Text(
//                     '${buyList.boughtProducts}/${buyList.totalItems}',
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
