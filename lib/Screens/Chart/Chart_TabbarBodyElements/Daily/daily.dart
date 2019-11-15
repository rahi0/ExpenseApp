import 'package:expanse_manegment/Screens/Chart/Chart_TabbarBodyElements/Daily/dailyAllChart.dart';
import 'package:expanse_manegment/Screens/Chart/Chart_TabbarBodyElements/Daily/dailyExpenseChart.dart';
import 'package:expanse_manegment/Screens/Chart/Chart_TabbarBodyElements/Daily/dailyIncomeChart.dart';
import 'package:flutter/material.dart';

enum WidgetMarker {
  all,
  income,
  expense,
}

class Daily extends StatefulWidget {
  @override
  _DailyState createState() => _DailyState();
}

class _DailyState extends State<Daily> {
  WidgetMarker selectedWidgetMarker = WidgetMarker.all;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  alignment: Alignment.center,
                  height: 50,
                  child: Container(
                    height: 30.5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Color(0XFF1A3D7A), width: 1.5),
                        borderRadius: BorderRadius.circular(4.0)),
                    alignment: Alignment.center,
                    child: Row(
                      children: <Widget>[
                        /////////    All Container Start   //////////
                        Container(
                          height: 29,
                          color: (selectedWidgetMarker == WidgetMarker.all)
                              ? Color(0XFF1A3D7A)
                              : Color(0XFFFFFFFF),
                          child: FlatButton(
                            onPressed: () {
                              //_getDivData(false);
                              setState(() {
                                selectedWidgetMarker = WidgetMarker.all;
                              });
                            },
                            child: Text(
                              "All",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                color:
                                    (selectedWidgetMarker == WidgetMarker.all)
                                        ? Color(0XFFFFFFFF)
                                        : Color(0XFF1A3D7A),
                                fontSize: 16.0,
                                decoration: TextDecoration.none,
                                fontFamily: 'Roboto',
                                fontWeight:
                                    (selectedWidgetMarker == WidgetMarker.all)
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        ////////////  AllContainer End ///////////////
                       
                        ////////////  Income Container Start  //////////
                        Container(
                          height: 29,
                          color: (selectedWidgetMarker == WidgetMarker.income)
                              ? Color(0XFF1A3D7A)
                              : Color(0XFFFFFFFF),
                          child: FlatButton(
                            onPressed: () {
                              // _getDivData(true);
                              setState(() {
                                selectedWidgetMarker = WidgetMarker.income;
                              });
                            },
                            child: Text(
                              "Income",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                color: (selectedWidgetMarker ==
                                        WidgetMarker.income)
                                    ? Color(0XFFFFFFFF)
                                    : Color(0XFF1A3D7A),
                                fontSize: 16.0,
                                decoration: TextDecoration.none,
                                fontFamily: 'Roboto',
                                fontWeight: (selectedWidgetMarker ==
                                        WidgetMarker.expense)
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        ////////////  Income Container End  //////////
                      
                        //////  Expense Container Start   ///////
                        Container(
                          height: 29,
                          color: (selectedWidgetMarker == WidgetMarker.expense)
                              ? Color(0XFF1A3D7A)
                              : Color(0XFFFFFFFF),
                          child: FlatButton(
                            onPressed: () {
                              //_getDivData(false);
                              setState(() {
                                selectedWidgetMarker = WidgetMarker.expense;
                              });
                            },
                            child: Text(
                              "Expense",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                color: (selectedWidgetMarker ==
                                        WidgetMarker.expense)
                                    ? Color(0XFFFFFFFF)
                                    : Color(0XFF1A3D7A),
                                fontSize: 16.0,
                                decoration: TextDecoration.none,
                                fontFamily: 'Roboto',
                                fontWeight: (selectedWidgetMarker ==
                                        WidgetMarker.expense)
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        ////////////  Expense Container End  //////////
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: getCustomContainer(),
            )
          ],
        ),
      ),
    );
  }

//////// Selected Body Method /////////
  Widget getCustomContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.all:
        return getAllWidget();
      case WidgetMarker.income:
        return getIncomeWidget();
      case WidgetMarker.expense:
        return getExpenseWidget();
    }
    return getAllWidget();
  }
  //////// Selected Body Method /////////

//////// All Body  /////////
  Widget getAllWidget() {
    return Container(
      child: DailyAllChart(),
    );
  }

  Widget getIncomeWidget() {
    return Container(
      child: DailyIncomeChart(),
    );
  }

  Widget getExpenseWidget() {
    return Container(
      child: DailyExpenseChart(),
    );
  }
  //////// All Body  /////////

}
