import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AllowanceMonthly extends StatefulWidget {
  @override
  _AllowanceMonthlyState createState() => _AllowanceMonthlyState();
}

class _AllowanceMonthlyState extends State<AllowanceMonthly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        body: Column(
          children: <Widget>[
            Container(
                height: 270,
                margin: EdgeInsets.fromLTRB(8.0, 50.0, 8.0, 10.0),
                padding: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 10.0),
                child: SfCartesianChart(
                    plotAreaBorderColor: Colors.white,

                    ////////////////// X-AXIS DECORATION START ///////////////

                    primaryXAxis: CategoryAxis(
                      edgeLabelPlacement: EdgeLabelPlacement.shift,
                        axisLine: AxisLine(
                          color: Color(0XFF2F4F87),
                          width: 1.2,
                        ),
                        majorGridLines: MajorGridLines(color: Colors.white),
                        labelPlacement: LabelPlacement.onTicks,
                        labelStyle: ChartTextStyle(
                          color: Color(0XFF2F4F87),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        )),

                    ////////////////// X-AXIS DECORATION END ///////////////

                    ////////////////// Y-AXIS DECORATION START ///////////////

                    primaryYAxis: NumericAxis(
                      edgeLabelPlacement: EdgeLabelPlacement.shift,
                        axisLine: AxisLine(
                          color: Color(0XFF2F4F87),
                          width: 1.2,
                        ),
                        majorGridLines: MajorGridLines(color: Colors.white),
                        labelStyle: ChartTextStyle(
                            color: Color(0XFF2F4F87),
                            fontSize: 12,
                            fontFamily: 'Poppins')),

                    ////////////////// Y-AXIS DECORATION END ///////////////

                    series: <LineSeries<SalesData, String>>[
                      LineSeries<SalesData, String>(
                          color: Color(0XFF1A3D7A),
                          // Bind data source
                          dataSource: <SalesData>[
                            SalesData('Week 1', 50),
                            SalesData('Week 2', 50),
                            SalesData('Week 3', 100),
                            SalesData('Week 4', 100),
                          ],
                          xValueMapper: (SalesData sales, _) => sales.year,
                          yValueMapper: (SalesData sales, _) => sales.sales,

                          // Renders the marker
                          markerSettings: MarkerSettings(isVisible: true))
                    ])),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                       ///////   Color Container  /////////
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: Color(0XFF2F4F87),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                      Text(
                        "Oct, 2019", 
                      style: TextStyle(
                        color: Color(0XFF2B2B2B),
                        fontFamily: 'Poppins',
                        fontSize: 19,
                        fontWeight: FontWeight.w400

                        ),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Total income 1350",
                    style: TextStyle(
                          color: Color(0XFF2B2B2B),
                          fontFamily: 'Poppins',
                          fontSize: 17,

                          ),),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
