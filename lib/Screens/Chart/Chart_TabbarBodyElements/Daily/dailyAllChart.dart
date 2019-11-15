import 'package:expanse_manegment/Screens/Chart/Chart_TabbarBodyElements/Daily/Total_Income/total_Income_Tabbar.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class DailyAllChart extends StatefulWidget {
  @override
  _DailyAllChartState createState() => _DailyAllChartState();
}

class _DailyAllChartState extends State<DailyAllChart> {
  bool toggle = false;
  Map<String, double> dataMap = new Map();
  List<Color> colorList = [
    Color(0XFF027A6C),
    Color(0XFFE54D25),
  ];

  @override
  void initState() {
    super.initState();

    ////////// Calling Pie Chart //////////
    togglePieChart();

    dataMap.putIfAbsent("Total Income", () => 50);
    dataMap.putIfAbsent("Total Expanse", () => 65);
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
                   Navigator.push(context, MaterialPageRoute(builder: (context) => TotalIncome()));
                },
                child: itemsColumn(Color(0XFF027A6C), 'Total Income', '50')),
            GestureDetector(
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => TotalExpense()));
                },
                child: itemsColumn(Color(0XFFE54D25), 'Total Expanse', '65')),

            //////// Last Row  ( Balance )  ////////
            Container(
              margin: EdgeInsets.fromLTRB(15.0, 20.0, 12.0, 10.0),
              padding: EdgeInsets.only(right: 8.0, left: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Balance',
                    style: TextStyle(
                      color: Color(0XFF214D9B),
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '70',
                    style: TextStyle(
                      color: Color(0XFF7DC83C),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
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
                  ///////   Color Container  ///////
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
                  fontFamily: 'Roboto',
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
