import 'package:expanse_manegment/Screens/Chart/mainChart.dart';
import 'package:expanse_manegment/Screens/Settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DrawerOnly extends StatefulWidget {
  @override
  _DrawerOnlyState createState() => _DrawerOnlyState();
}

class _DrawerOnlyState extends State<DrawerOnly> {
  @override
  Widget build(BuildContext context) {
    ///////DAte//////////
    DateTime selectedDate = DateTime.now();
    final f = new DateFormat('yyyy-MM-dd');

    Future<Null> _selectDate(BuildContext context) async {
      final DateTime picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(1964, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate)
        setState(() {
          selectedDate = picked;
        });
    }

    return new Drawer(
        child: new ListView(
      children: <Widget>[
        new DrawerHeader(
          child: Container(
              // decoration: new BoxDecoration(
              //     border: Border.all(
              //     width: 3,
              //       color:Color(0xFF01d56a).withOpacity(0.4),

              //     ),
              //     shape: BoxShape.circle
              //     ),
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ClipOval(
                child: Image.asset(
                  'assets/img/profile.png',
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                ),
              ),
              new Text(
                "Humayun Rahi",
                style: TextStyle(
                  color: Color(0XFF1A3D7A),
                  fontSize: 18.0,
                  decoration: TextDecoration.none,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),

          //////   camera icon  ////////////
          // decoration: new BoxDecoration(
          //     color: Colors.orange
          // ),
        ),

        //////////// Home Button Start////////////////
        new ListTile(
          contentPadding: EdgeInsets.only(left: 35),
          leading: Icon(
            Icons.home,
            color: Color(0XFF1A3D7A),
          ),
          title: new Text(
            "Home",
            style: TextStyle(
              color: Color(0XFF1A3D7A),
              fontSize: 17.0,
              decoration: TextDecoration.none,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            // Navigator.pop(ctxt);
            // Navigator.push(ctxt,
            //     new MaterialPageRoute(builder: (ctxt) => new FirstPage()));
          },
        ),
        //////////// Home Button End////////////////

        //////////// Calendar Button Start////////////////
        new ListTile(
          contentPadding: EdgeInsets.only(left: 35),
          leading: Icon(
            Icons.calendar_today,
            color: Color(0XFF1A3D7A),
          ),
          title: new Text(
            "Calendar",
            style: TextStyle(
              color: Color(0XFF1A3D7A),
              fontSize: 17.0,
              decoration: TextDecoration.none,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            _selectDate(context);
          },
        ),
        //////////// Calendar Button End////////////////

        //////////// Chart Button Start////////////////
        new ListTile(
          contentPadding: EdgeInsets.only(left: 35),
          leading: Icon(
            Icons.pie_chart,
            color: Color(0XFF1A3D7A),
          ),
          title: new Text(
            "Chart",
            style: TextStyle(
              color: Color(0XFF1A3D7A),
              fontSize: 17.0,
              decoration: TextDecoration.none,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
             Navigator.pop(context);
            Navigator.push(context,
                new MaterialPageRoute(builder: (ctxt) => new Charts()));
          },
        ),
        //////////// Chart Button End////////////////

        //////////// Category Button Start////////////////
        new ListTile(
          contentPadding: EdgeInsets.only(left: 35),
          leading: Icon(
            Icons.view_list,
            color: Color(0XFF1A3D7A),
          ),
          title: new Text(
            "Category",
            style: TextStyle(
              color: Color(0XFF1A3D7A),
              fontSize: 17.0,
              decoration: TextDecoration.none,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            // Navigator.pop(ctxt);
            // Navigator.push(ctxt,
            //     new MaterialPageRoute(builder: (ctxt) => new FirstPage()));
          },
        ),
        //////////// Category Button End////////////////

        //////////// Export Button Start////////////////
        new ListTile(
          contentPadding: EdgeInsets.only(left: 35),
          leading: Icon(
            Icons.import_export,
            color: Color(0XFF1A3D7A),
          ),
          title: new Text(
            "Export",
            style: TextStyle(
              color: Color(0XFF1A3D7A),
              fontSize: 17.0,
              decoration: TextDecoration.none,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            // Navigator.pop(ctxt);
            // Navigator.push(ctxt,
            //     new MaterialPageRoute(builder: (ctxt) => new FirstPage()));
          },
        ),
        //////////// Export Button End////////////////

        //////////// Settings Button Start////////////////
        new ListTile(
          contentPadding: EdgeInsets.only(left: 35),
          leading: Icon(
            Icons.settings,
            color: Color(0XFF1A3D7A),
          ),
          title: new Text(
            "Settings",
            style: TextStyle(
              color: Color(0XFF1A3D7A),
              fontSize: 17.0,
              decoration: TextDecoration.none,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                new MaterialPageRoute(builder: (ctxt) => new Settings()));
          },
        ),
        //////////// Settings Button End////////////////

        /////////// Logout Button Start////////////////
        new ListTile(
          contentPadding: EdgeInsets.only(left: 35),
          leading: Icon(
            Icons.exit_to_app,
            color: Color(0XFF1A3D7A),
          ),
          title: new Text(
            "Log Out",
            style: TextStyle(
              color: Color(0XFF1A3D7A),
              fontSize: 17.0,
              decoration: TextDecoration.none,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            // Navigator.pop(ctxt);
            // Navigator.push(ctxt,
            //     new MaterialPageRoute(builder: (ctxt) => new FirstPage()));
          },
        ),
        //////////// Logout Button End////////////////
      ],
    ));
  }
}
