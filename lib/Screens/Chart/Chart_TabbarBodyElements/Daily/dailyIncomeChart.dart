import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import 'Income_Chart_Items/Daily_Income_Allowance/allowance.dart';

class DailyIncomeChart extends StatefulWidget {
  @override
  _DailyIncomeChartState createState() => _DailyIncomeChartState();
}

class _DailyIncomeChartState extends State<DailyIncomeChart> {
  bool toggle = false;
  Map<String, double> dataMap = new Map();
  List<Color> colorList = [
    Color(0XFFF78F1E),
    Color(0XFFED6D23),
    Color(0XFF027A6C),
    Color(0XFF9D9D36),
    Color(0XFFE54D25),
  ];

  @override
  void initState() {
    super.initState();

    ////////// Calling Pie Chart //////////
    togglePieChart();

    dataMap.putIfAbsent("Allowance", () => 350);
    dataMap.putIfAbsent("Child support", () => 150);
    dataMap.putIfAbsent("Petty cash", () => 350);
    dataMap.putIfAbsent("Rental", () => 420);
    dataMap.putIfAbsent("Salary", () => 150);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: toggle
                  ? PieChart(
                      dataMap: dataMap,
                      legendFontColor: Colors.blueGrey[900],
                      legendFontSize: 14.0,
                      legendFontWeight: FontWeight.w500,
                      animationDuration: Duration(milliseconds: 800),
                      chartLegendSpacing: 32.0,
                      chartRadius: MediaQuery.of(context).size.width / 2.3,
                      showChartValuesInPercentage: true,
                      showChartValues: true,
                      showChartValuesOutside: false,
                      chartValuesColor: Colors.white,
                      colorList: colorList,
                      showLegends: false,
                      //decimalPlaces: 1,
                      showChartValueLabel: false,
                      chartValueFontSize: 14,
                      chartValueFontWeight: FontWeight.bold,
                      initialAngle: 0,
                    )
                  : Text("show chart"),
            ),

            ////////  Showing Items List  ////////
            GestureDetector(
                onTap: () {
                  print('allowance');
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DailyIncomeAllowance()));
                },
                child: itemsColumn(Color(0XFFED6D23), 'Allowance', '1350')),
            itemsColumn(Color(0XFFE54D25), 'Child support', '150'),
            itemsColumn(Color(0XFF027A6C), 'Petty cash', '350'),
            itemsColumn(Color(0XFFC0CA34), 'Rental', ' 420'),
            itemsColumn(Color(0XFFF9A924), 'Salary', '150'),
          ],
        ),
      ),
    );
  }

  Container itemsColumn(Color color, String title, String amount) {
    return Container(
      margin: EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 10.0),
      padding: EdgeInsets.only(right: 8.0, left: 8.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  //////Spacing////
                  SizedBox(
                    width: 12.0,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0XFF2B2B2B),
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                amount,
                style: TextStyle(
                  color: Color(0XFF204381),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void togglePieChart() {
    setState(() {
      toggle = !toggle;
    });
  }
}
