import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key});

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
              'oii',
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
              '22/08/22',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff8D8D8D),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 0, top: 5, right: 0, bottom: 15),
                  child: LinearPercentIndicator(
                    alignment: MainAxisAlignment.start,
                    width: MediaQuery.of(context).size.width -
                        100, //como colocar o maximo posivel
                    animation: true,
                    lineHeight: 12.0,
                    animationDuration: 500,
                    percent: 1.0,
                    barRadius: const Radius.circular(16),
                    progressColor: theme.colorScheme.primary,
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 0, top: 0, right: 15, bottom: 14),
                child: Text(
                  '14/18',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
