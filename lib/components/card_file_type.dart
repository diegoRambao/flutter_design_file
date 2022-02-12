import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CardFileType extends StatelessWidget {
  final String name;
  final String quantity;
  final double percentage;
  final String percentageText;
  final String img;
  
  const CardFileType({Key? key, required this.name, required this.quantity, required this.percentage, required this.percentageText, required this.img}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('img/$img', height: 48.0,),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                    style: const TextStyle(
                        color: Color(0xFF284379),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500
                    )
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('$quantity GB',style: const TextStyle(fontSize: 12.0, color: Color(0xFF5D7CA6))),
                      LinearPercentIndicator(
                        width: 100.0,
                        trailing: Text('$percentageText %',
                          style: const TextStyle(
                            fontSize: 12.0, color: Color(0xFF88A2D8)
                          )
                        ),
                        lineHeight: 8.0,
                        percent: percentage,
                        progressColor: const Color(0xFF2562FC),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Color(0xFF284379),
            )
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 2),
          )
        ]
      ),
      margin: const EdgeInsets.all(10),
      width: double.infinity,
    );
  }
}
