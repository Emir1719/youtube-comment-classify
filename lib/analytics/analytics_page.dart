import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_comment_classify/analytics/widget/chart_data.dart';

import './analytics_controller.dart';

class AnalyticsPage extends GetView<AnalyticsController> {
  const AnalyticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final list = [1, 2, 3];
    final list2 = [5, 2, 3];

    return Scaffold(
      appBar: AppBar(title: const Text('Analiz')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40).copyWith(top: 100),
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: LineChart(
                LineChartData(
                  minY: 0,
                  lineTouchData: ChartData.lineTouch,
                  titlesData: ChartData.title,
                  gridData: const FlGridData(show: true),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: List.generate(
                        list.length,
                        (i) => FlSpot(i.toDouble(), list[i].toDouble()),
                      ),
                      barWidth: 5,
                      isCurved: true,
                      isStrokeCapRound: true,
                      gradient: ChartData.gradient,
                      dotData: ChartData.dotData,
                      belowBarData: ChartData.belowBarData,
                    ),
                    LineChartBarData(
                      spots: List.generate(
                        list.length,
                        (i) => FlSpot(i.toDouble(), list2[i].toDouble()),
                      ),
                      barWidth: 5,
                      isCurved: true,
                      isStrokeCapRound: true,
                      gradient: ChartData.gradient,
                      dotData: ChartData.dotData,
                      belowBarData: ChartData.belowBarData,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
