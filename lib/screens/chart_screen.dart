import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_app_pj5/screens/chart.dart';
class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          children: [
            Text(
              'Transactions',
              style: TextStyle(
                fontSize: 16,
                //color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox( height: 12,),
            Container(
              width: size.width,
              height:  size.height* .45,
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              // color:  Colors.redAccent,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(12, 20, 12, 12),
                child: MyChart(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
