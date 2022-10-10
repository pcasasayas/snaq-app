import 'package:auto_size_text/auto_size_text.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartWidget extends StatefulWidget {
  const PieChartWidget({Key? key, this.pieChartValues = const []}) : super(key: key);

  final List<PieChartValue> pieChartValues;

  @override
  State<PieChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {
  int touchedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.1,
      child: PieChart(
        PieChartData(
          borderData: FlBorderData(
            show: false,
          ),
          sectionsSpace: 0,
          centerSpaceRadius: 0,
          sections: showingSections()),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(widget.pieChartValues.length, (index) {
      const fontSize = 16.0;
      const radius = 70.0;
      const widgetSize = 50.0;
      return PieChartSectionData(
        color: widget.pieChartValues[index].color,
        value: widget.pieChartValues[index].value,
        title: widget.pieChartValues[index].title,
        radius: radius,
        titleStyle: const TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff)),
        badgeWidget: _Badge(
          widget.pieChartValues[index].label,
          size: widgetSize,
          borderColor: widget.pieChartValues[index].color,
        ),
        badgePositionPercentageOffset: .98,
      );
    });
  }
}

class PieChartValue {
  final Color color;
  final double value;
  final String title;
  final String label;

  PieChartValue(this.color, this.value, this.title, this.label);
}

class _Badge extends StatelessWidget {
  final String title;
  final double size;
  final Color borderColor;

  const _Badge(
    this.title, {
    Key? key,
    required this.size,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            offset: const Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      ),
      padding: EdgeInsets.all(size * .15),
      child: Center(
        child: AutoSizeText(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}