import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChart extends StatefulWidget {
  const LineChart({Key key}) : super(key: key);

  @override
  _LineChartState createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData('Jan', 25, 12),
      SalesData('Feb', 32, 20),
      SalesData('Mar', 45, 55),
      SalesData('Apr', 66, 25),
      SalesData('May', 27, 36),
      SalesData('Jun', 11, 5),
      SalesData('Jul', 25, 22),
      SalesData('Aug', 32, 15),
      SalesData('Sep', 45, 33),
      SalesData('Oct', 51, 40),
      SalesData('Nov', 27, 60),
      SalesData('Dec', 33, 15),
    ];
    return Container(
      child:
          SfCartesianChart(primaryXAxis: CategoryAxis(), series: <ChartSeries>[
        // Renders line chart
        LineSeries<SalesData, String>(
            dataSource: chartData,
            xValueMapper: (SalesData sales, _) => sales.month,
            yValueMapper: (SalesData sales, _) => sales.income),
        LineSeries<SalesData, String>(
            dataSource: chartData,
            xValueMapper: (SalesData sales, _) => sales.month,
            yValueMapper: (SalesData sales, _) => sales.expenditure),
      ]),
    );
  }
}

class SalesData {
  final String month;
  final double income;
  final double expenditure;

  SalesData(this.month, this.income, this.expenditure);
}
