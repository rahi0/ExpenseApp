import 'package:flutter/material.dart';

class GeneralPage extends StatefulWidget {
  @override
  _GeneralPageState createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  String dropdownMonthValue = 'January';
  String dropdownDayValue = '1';
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
              child: Text('General',
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
              padding:
                  EdgeInsets.only(top: 12, bottom: 0.0, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Color(0XFFFFFFFF),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    itemList(
                      'Theme',
                      'Light',
                      Color(0XFF707070).withOpacity(0.3),
                    ),
                    itemList(
                      'Currency',
                      'Doller',
                      Color(0XFF707070).withOpacity(0.3),
                    ),
                    GestureDetector(
                        onTap: () {
                          _showDialog();
                        },
                        child: itemList(
                          'Grouping',
                          'Monthly',
                          Color(0XFF707070).withOpacity(0.3),
                        )),
                    itemList(
                      'Regular Expense And Income',
                      '',
                      Color(0XFF707070).withOpacity(0.3),
                    ),
                    itemList(
                      'First Day Of Week',
                      'Sunday',
                      Color(0XFF707070).withOpacity(0.3),
                    ),
                    itemList(
                      'Backup/Restore Data',
                      '',
                      Color(0XFF707070).withOpacity(0.3),
                    ),
                    itemList(
                      'Hide Recent Account ',
                      '',
                      Color(0XFF707070).withOpacity(0.3),
                    ),
                    itemList(
                      'Show Recent Update',
                      '',
                      Color(0XFF707070).withOpacity(0.3),
                    ),
                    itemList(
                      'Show Notification ',
                      '',
                      Color(0XFFFFFFFF),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  Column itemList(String title, String subTitle, Color color) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(5.0, 12.0, 5.0, 0.0),
          //color: Colors.amber,
          //height: 50.0,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(2.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        //alignment: Alignment.center,
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          //'Profile',
                          title,
                          style: TextStyle(
                              color: Color(0XFF284E94),
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 2.0),
                        child: Text(
                          //'Profile',
                          subTitle,
                          style: TextStyle(
                              color: Color(0XFF284E94).withOpacity(0.6),
                              fontFamily: 'Arial',
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: color,
          height: 10.0,
        ),
      ],
    );
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Color(0XFFF2F4F7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "Cycle       ",
                  style: TextStyle(
                    color: Color(0XFF294F95),
                    fontSize: 14.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Container(
                    //height: 45,
                    child: DropdownButton(
                  iconSize: 28,
                  iconEnabledColor: Color(0XFF294F95),
                  iconDisabledColor: Color(0XFF294F95),
                  isExpanded: false,
                  //isDense: true,
                  hint: Text("Monthly",
                      style: TextStyle(
                          color: Color(0XFF294F95),
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                )),
                Text("Day Of Month",
                    style: TextStyle(
                        color: Color(0XFF294F95),
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.normal)),
                Container(
                  decoration: BoxDecoration(
                      // borderRadius:
                      //     BorderRadius.all(Radius.circular(10.0)),

                      ),
                  //height: 45,
                  // child: DropdownButton(
                  //   iconSize: 28,
                  //   iconEnabledColor: Color(0XFF294F95),
                  //   iconDisabledColor: Color(0XFF294F95),

                  // )
                  child: DropdownButton<String>(
                    value: dropdownDayValue,
                    //icon: Icon(Icons.arrow_downward),
                    iconSize: 28,
                    iconEnabledColor: Color(0XFF294F95),
                    iconDisabledColor: Color(0XFF294F95),
                    elevation: 16,
                    // style: TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Color(0XFFF2F4F7),
                    ),
                    
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownDayValue = newValue;
                      });
                    },
                    items: <String>[
                      '1',
                      '2',
                      '3',
                      '4',
                      '5',
                      '6',
                      '7',
                      '8',
                      '9',
                      '10',
                      '11',
                      '12',
                      '13',
                      '14',
                      '15',
                      '16',
                      '17',
                      '18',
                      '19',
                      '20',
                      '21',
                      '22',
                      '23',
                      '24',
                      '25',
                      '26',
                      '27',
                      '28',
                      '29',
                      '30'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                        style: TextStyle(
                        color: Color(0XFF294F95),
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
