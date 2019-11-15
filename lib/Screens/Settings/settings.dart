import 'package:flutter/material.dart';

import 'Settings_Page_Items/General/general.dart';
import 'Settings_Page_Items/Profile/profile.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: Color(0XFF1A3D7A),
            titleSpacing: 2,
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: GestureDetector(
                onTap: Navigator.of(context).pop,
                child: Icon(
                  Icons.arrow_back,
                  size: 28.0,
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text('Settings',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                    fontFamily: 'Roboto',
                  )),
            ),
          ),
        ),
        body: Container(
          //alignment: Alignment.centerLeft,
          child: Container(
            decoration: BoxDecoration(color: Color(0XFF1A3D7A)),
            child: Container(
              padding: EdgeInsets.only(top: 12, bottom: 0, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Color(0XFFFFFFFF),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile()));
                        },
                        child: itemList(
                          Icon(
                            Icons.person,
                            color: Color(0XFFFFFFFF),
                          ),
                          'Profile',
                          Color(0XFF707070).withOpacity(0.3),
                        )),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GeneralPage()));
                        },
                        child: itemList(
                          Icon(
                            Icons.settings,
                            color: Color(0XFFFFFFFF),
                          ),
                          'General',
                          Color(0XFF707070).withOpacity(0.3),
                        )),
                    itemList(
                      Icon(Icons.settings_backup_restore,
                          color: Color(0XFFFFFFFF)),
                      'Switch Account',
                      Color(0XFF707070).withOpacity(0.3),
                    ),
                    itemList(
                      Icon(
                        Icons.note,
                        color: Color(0XFFFFFFFF),
                      ),
                      'Terms And Conditions',
                      Color(0XFF707070).withOpacity(0.3),
                    ),
                    itemList(
                      Icon(
                        Icons.lock,
                        color: Color(0XFFFFFFFF),
                      ),
                      'Privacey',
                      Color(0XFF707070).withOpacity(0.3),
                    ),
                    itemList(
                      Icon(
                        Icons.feedback,
                        color: Color(0XFFFFFFFF),
                      ),
                      'Feedback',
                      Color(0XFF707070).withOpacity(0.3),
                    ),
                    itemList(
                      Icon(
                        Icons.subscriptions,
                        color: Color(0XFFFFFFFF),
                      ),
                      'Subscription',
                      Color(0XFF707070).withOpacity(0.3),
                    ),
                    itemList(
                      Icon(
                        Icons.help,
                        color: Color(0XFFFFFFFF),
                      ),
                      'Help',
                      Color(0XFF707070).withOpacity(0.3),
                    ),
                    itemList(
                        Icon(
                          Icons.people,
                          color: Color(0XFFFFFFFF),
                        ),
                        'About',
                        Color(0XFFFFFFFF)),
                  ],
                  //children: _mainList(),
                ),
              ),
            ),
          ),
        ));
  }

  Column itemList(Icon icons, String title, Color color) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(5.0, 8.0, 5.0, 8.0),
          // color: Colors.amber,
          // height: 45.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(6),
                        margin: EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          color: Color(0XFF596F97),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: icons,
                      ),
                      Container(
                        child: Text(
                          //'Profile',
                          title,
                          style: TextStyle(
                              color: Color(0XFF284E95),
                              fontFamily: 'Roboto',
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Icon(
                Icons.arrow_right,
                color: Color(0XFF596F97),
                size: 28,
              )
            ],
          ),
        ),
        Divider(color: color)
      ],
    );
  }
}
