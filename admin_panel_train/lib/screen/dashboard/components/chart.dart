import 'dart:ui';
import 'package:admin_panel_train/constant.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({
    super.key,
    required this.paiChartSelectionData,
  });

  final List<PieChartSectionData> paiChartSelectionData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 70,
                startDegreeOffset: -90,
                sections: paiChartSelectionData),
          ),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: defaultPadding,
              ),
              Text(
                "29.9",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    height: 1.5),
              ),
              Text("of 128gb")
            ],
          ))
        ],
      ),
    );
  }
}

List<PieChartSectionData> paiChartSelectionData = [
  PieChartSectionData(
      color: primaryColor, value: 25, showTitle: false, radius: 25),
  PieChartSectionData(
      color: Color(0xff26e5ff),
      value: 20,
      showTitle: false,
      /*size of circle*/ radius: 22),
  PieChartSectionData(
      color: Color(0xffffcf26), value: 10, showTitle: false, radius: 19),
  PieChartSectionData(
      color: Color(0xffee2727), value: 15, showTitle: false, radius: 16),
  PieChartSectionData(
      color: primaryColor.withOpacity(0.1),
      value: 25,
      showTitle: false,
      radius: 13),
];
