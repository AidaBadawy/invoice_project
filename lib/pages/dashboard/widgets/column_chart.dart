import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ColumnChart extends StatefulWidget {
  const ColumnChart({Key key}) : super(key: key);

  @override
  _ColumnChartState createState() => _ColumnChartState();
}

class _ColumnChartState extends State<ColumnChart> {
  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData('Jan', 25),
      SalesData('Feb', 32),
      SalesData('Mar', 45),
      SalesData('Apr', 66),
      SalesData('May', 27),
      SalesData('Jun', 11),
      SalesData('Jul', 25),
      SalesData('Aug', 32),
      SalesData('Sep', 45),
      SalesData('Oct', 51),
      SalesData('Nov', 27),
      SalesData('Dec', 33),
    ];
    return Expanded(
      child: Container(
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          series: [
            ColumnSeries<SalesData, String>(
                dataSource: chartData,
                xValueMapper: (SalesData sales, _) => sales.month,
                yValueMapper: (SalesData sales, _) => sales.sales)
          ],
        ),
      ),
    );
  }
}

class SalesData {
  final String month;
  final double sales;

  SalesData(this.month, this.sales);
}
