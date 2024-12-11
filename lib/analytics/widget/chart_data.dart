import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartData {
  static FlTitlesData get title => const FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 35,
            interval: 1,
            getTitlesWidget: _bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: _leftTitleWidgets,
            reservedSize: 35,
          ),
        ),
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      );

  static LineTouchData get lineTouch => LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipRoundedRadius: 10,
          getTooltipColor: (touchedSpot) => Colors.white,
          getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
            return touchedBarSpots.map((barSpot) {
              final flSpot = barSpot;
              return LineTooltipItem(
                flSpot.y.toStringAsFixed(0),
                const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              );
            }).toList();
          },
        ),
      );

  static BarAreaData get belowBarData => BarAreaData(
        show: true,
        gradient: LinearGradient(
          colors: [
            Colors.deepOrange.withOpacity(0.3),
            Colors.deepOrange.withOpacity(0.3),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      );

  static FlDotData get dotData => FlDotData(
        show: true,
        getDotPainter: (spot, percent, barData, index) => FlDotCirclePainter(
          color: Colors.black,
          strokeWidth: 1.2,
          radius: 4,
          strokeColor: Colors.black,
        ),
      );

  static LinearGradient get gradient => const LinearGradient(
        colors: [Colors.deepOrange, Colors.deepOrange],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      );

  static Widget _bottomTitleWidgets(double value, TitleMeta meta) {
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text('Pzt', style: _style);
        break;
      case 1:
        text = Text('Sal', style: _style);
        break;
      case 2:
        text = Text('Çar', style: _style);
        break;
      case 3:
        text = Text('Per', style: _style);
        break;
      case 4:
        text = Text('Cum', style: _style);
        break;
      case 5:
        text = Text('Cmt', style: _style);
        break;
      case 6:
        text = Text('Pzr', style: _style);
        break;
      default:
        text = const Text('');
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: text,
    );
  }

  static Widget _leftTitleWidgets(double value, TitleMeta meta) {
    String text;
    if (value.toInt() % 10 == 0 && value.toInt() <= 100) {
      text = value.toStringAsFixed(0);
    } else {
      return const SizedBox();
    }
    return Text(text, style: _style, textAlign: TextAlign.left);
  }

  static TextStyle get _style => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
}
