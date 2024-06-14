import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SamplePage152 extends StatefulWidget {
  const SamplePage152({
    super.key,
  });

  @override
  State<SamplePage152> createState() => _SamplePage152State();
}

class _SamplePage152State extends State<SamplePage152> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('fl_chart'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: PieChart(
              PieChartData(
                sections: [
                  PieChartSectionData(
                    value: 500,
                    title: r'Investments: $500',
                    showTitle: true,
                    radius: 70,
                    color: Colors.green,
                  ),
                  PieChartSectionData(
                    value: 1200,
                    title: r'Housing: $1200',
                    showTitle: true,
                    radius: 70,
                    color: Colors.blue,
                  ),
                  PieChartSectionData(
                    value: 400,
                    title: r'Food: $400',
                    showTitle: true,
                    radius: 70,
                    color: Colors.pink,
                  ),
                  PieChartSectionData(
                    value: 400,
                    title: r'Fun: $400',
                    showTitle: true,
                    radius: 70,
                    color: Colors.yellow,
                  ),
                  PieChartSectionData(
                    value: 80,
                    title: r'Internet: $80',
                    showTitle: true,
                    radius: 70,
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
