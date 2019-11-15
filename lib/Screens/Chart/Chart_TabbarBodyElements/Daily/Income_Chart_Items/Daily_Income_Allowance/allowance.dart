import 'package:expanse_manegment/Screens/Chart/Chart_TabbarBodyElements/Daily/Income_Chart_Items/Daily_Income_Allowance/allowanceMonthly.dart';
import 'package:expanse_manegment/Screens/Chart/Chart_TabbarBodyElements/Daily/Income_Chart_Items/Daily_Income_Allowance/allowanceWeekly.dart';
import 'package:expanse_manegment/Screens/Chart/Chart_TabbarBodyElements/Daily/Income_Chart_Items/Daily_Income_Allowance/allowanceYearly.dart';
import 'package:flutter/material.dart';


class DailyIncomeAllowance extends StatefulWidget {
  @override
  _DailyIncomeAllowanceState createState() => _DailyIncomeAllowanceState();
}

class _DailyIncomeAllowanceState extends State<DailyIncomeAllowance> with SingleTickerProviderStateMixin{


 TabController tabController;
  
  @override
  void initState() {
    tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var tabBarItem = new TabBar(
      tabs: [
        new Tab(
          child: Text('Weekly',
              style: TextStyle(
                  color: Color(0XFF1A3D7A),
                  fontFamily: 'Roboto',
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
        ),
        new Tab(
          child: Text('Monthly',
              style: TextStyle(
                  color: Color(0XFF1A3D7A),
                  fontFamily: 'Roboto',
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
        ),
        new Tab(
          child: Text('Yearly',
              style: TextStyle(
                  color: Color(0XFF1A3D7A),
                  fontFamily: 'Roboto',
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
        ),
      ],
      controller: tabController,
      indicatorColor: Color(0XFF1A3D7A),
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: Color(0XFF1A3D7A),
      indicatorWeight: 2.5,
      isScrollable: true,
    );

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: AppBar(
            elevation: 4.0,
            backgroundColor: Colors.white,
            titleSpacing: 2,
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: GestureDetector(
                onTap: Navigator.of(context).pop,
                child: Icon(
                  Icons.arrow_back,
                  size: 28.0,
                  color: Color(0XFF1A3D7A),
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text('Allowance',
                  style: TextStyle(
                    color: Color(0XFF1A3D7A),
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                    fontFamily: 'Roboto',
                  )),
            ),
            bottom: tabBarItem,
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: <Widget>[
           AllowanceWeekly(),
           AllowanceMonthly(),
           AllowanceYearly(),
          ],
        ),
      ),
    );
  }
}
