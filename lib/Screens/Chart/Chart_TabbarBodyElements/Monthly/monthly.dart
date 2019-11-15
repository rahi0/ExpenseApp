import 'package:expanse_manegment/Screens/Chart/Chart_TabbarBodyElements/Monthly/monthlyExpenseChart.dart';
import 'package:expanse_manegment/Screens/Chart/Chart_TabbarBodyElements/Monthly/monthlyIncomeChart.dart';
import 'package:flutter/material.dart';

enum WidgetMarker {
  income,
  expense,
}
class Monthly extends StatefulWidget {
  @override
  _MonthlyState createState() => _MonthlyState();
}

class _MonthlyState extends State<Monthly> {
 WidgetMarker selectedWidgetMarker = WidgetMarker.income;

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
                        border: Border.all(color: Color(0XFF1A3D7A), width: 1.5),
                        borderRadius: BorderRadius.circular(4.0)),
                    alignment: Alignment.center,
                    child: Row(
                      children: <Widget>[
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
                                color:
                                    (selectedWidgetMarker == WidgetMarker.income)
                                        ? Color(0XFFFFFFFF)
                                        : Color(0XFF1A3D7A),
                                fontSize: 16.0,
                                decoration: TextDecoration.none,
                                fontFamily: 'Roboto',
                                fontWeight:
                                    (selectedWidgetMarker == WidgetMarker.expense)
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
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
                                color:
                                    (selectedWidgetMarker == WidgetMarker.expense)
                                        ? Color(0XFFFFFFFF)
                                        : Color(0XFF1A3D7A),
                                fontSize: 16.0,
                                decoration: TextDecoration.none,
                                fontFamily: 'Roboto',
                                fontWeight:
                                    (selectedWidgetMarker == WidgetMarker.expense)
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
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
    Widget getCustomContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.income:
        return getIncomeWidget();
      case WidgetMarker.expense:
        return getExpenseWidget();
    
    }
    return getIncomeWidget();
  }

  Widget getIncomeWidget() {
    return Container(
     child: MonthlyIncomeChart(),
    );
  }
    Widget getExpenseWidget() {
    return Container(
      child: MonthlyExpenseChart(),
      
    );
  }
}