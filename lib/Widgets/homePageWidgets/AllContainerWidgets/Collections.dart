import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Collections extends StatefulWidget {
  @override
  _CollectionsState createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  final _formKey = GlobalKey<FormState>();
  List len = [5, 5, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0),
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
              child: Text('Collections',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                    fontFamily: 'Roboto',
                  )),
            ),
          ),
        ),
        body: Container(
          alignment: Alignment.centerLeft,
          child: Container(
            decoration: BoxDecoration(color: Color(0XFF1A3D7A)),
            child: Container(
              padding: EdgeInsets.only(
                  top: 20, bottom: 0, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Color(0XFFF2F4F7),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: _mainList(),
                ),
              ),
            ),
          ),
        ));
  }

  List<Widget> _mainList() {
    List<Widget> everydaylist = [];
    for (var tr in len) {
      everydaylist.add(
        Container(
          padding: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 15.0),
          decoration: BoxDecoration(
              // boxShadow: [BoxShadow(color: Colors.grey[200], blurRadius: 3)],
              ),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 20, left: 5),
                alignment: Alignment.topLeft,
                child: Text(
                  '01, Oct, 2019',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: Color(0XFF1A3D7A),
                      fontSize: 18.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                // padding: EdgeInsets.fromLTRB(5, 8, 5, 8),
                decoration: BoxDecoration(
                  //color: Colors.red,
                  // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(color: Colors.grey[350], blurRadius: 5)
                  ],
                ),
                //color: Colors.white,
                child: Column(
                  children: _itemList(),
                ),
              )
            ],
          ),
        ),
      );
    }
    return everydaylist;
  }

  ////// Item List /////////
  List<Widget> _itemList() {
    List<Widget> everydayItemlist = [];
    int i = 0;
    int length = len.length - 1;
    for (var tr in len) {
      everydayItemlist.add(Slidable(
        actionPane: SlidableDrawerActionPane(),
        //delegate: new SlidableDrawerDelegate(),
        actionExtentRatio: 0.25,
        child: Container(
            margin: EdgeInsets.only(bottom: 2),
            padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
            decoration: BoxDecoration(
              color: Colors.white,
              //border:  Border(bottom: BorderSide(color: Colors.grey[200]))
              borderRadius: i == 0
                  ? BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0))
                  : i == length
                      ? BorderRadius.only(
                          bottomRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0))
                      : BorderRadius.only(
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    // color: Colors.yellow,
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Icon(
                            Icons.local_gas_station,
                            color: Colors.black54,
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              //color: Colors.blue,
                              child: Text(
                                'Fuel',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color(0XFF1A3D7A),
                                    fontSize: 17.0,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  //color: Colors.green,
                  child: Text(
                    '-10,000',
                    style: TextStyle(
                        color: Color(0XFF1A3D7A),
                        fontSize: 15.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal),
                  ),
                )
              ],
            )),
        secondaryActions: <Widget>[
          new IconSlideAction(
            // caption: 'Edit',
            color: Color(0XFFEFEFEF),
            //icon: Icons.edit,
            iconWidget: Icon(
              Icons.edit,
              color: Color(0XFF1A3D7A),
            ),
            onTap: () => null, // _showSnackBar('More'),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: i == 0
                  ? BorderRadius.only(
                      topRight: Radius.circular(10.0),
                    )
                  : i == length
                      ? BorderRadius.only(
                          bottomRight: Radius.circular(10.0),
                        )
                      : BorderRadius.only(
                          bottomRight: Radius.circular(0.0),
                          topRight: Radius.circular(0.0)),
            ),
            child: new IconSlideAction(
              // caption: 'Delete',
              color: Colors.transparent,
              icon: Icons.delete,
              onTap: () {
                _showDialog();
              },
            ),
          ),
        ],
      ));
      i++;
    }
    return everydayItemlist;
  }

  ///////Dialog ////////////////////
  void _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        child: new Text(
                          "Do you want to delete this Transactions?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0XFF1A3D7A),
                            fontSize: 19.0,
                            decoration: TextDecoration.none,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    //color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ///////// Cancle Button Start /////
                        Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: Colors.white),
                            height: 45,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: 12, right: 12),
                                child: Text(
                                  'Cancel',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Color(0XFF1A3D7A),
                                    fontSize: 18.0,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              color: Colors.white,
                              elevation: 2.0,
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10))),
                            )),

                        ///////// Cancle Button end /////

                        ///////// Ok Button Start /////
                        Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Color(0XFFFB7676),
                            ),
                            height: 45,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },

                              child: Container(
                                padding: EdgeInsets.only(left: 25, right: 25),
                                child: Text(
                                  'Ok',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Color(0XFF1A3D7A),
                                    fontSize: 18.0,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              color: Color(0XFFFB7676),
                              elevation: 2.0,
                              //splashColor: Colors.blueGrey,
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                            )),

                        ///////// Ok Button end /////
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
