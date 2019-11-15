import 'package:expanse_manegment/Widgets/homePageWidgets/drawerOnly.dart';
import 'package:expanse_manegment/Widgets/homePageWidgets/switchWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var top = 0.0;
  double animhight = 80.0;

  @override
  void initState() {
    anim();
    super.initState();
  }

  anim() async {
    await Future.delayed(new Duration(milliseconds: 100));
    setState(() {
     animhight = 0.0; 
    });
  }

  Container buttonContainer(String picture, String title) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey[200], blurRadius: 3)]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          /////////// Button Icon start///////////
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(picture))),
            ),
          ),
          /////////// Button Icon end///////////

          /////////// Button Icon start///////////
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 5, right: 5),
            height: 40,
            //color: Colors.red,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF292929),
                  fontFamily: "Raleway",
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          /////////// Button Icon end///////////
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerOnly(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
        backgroundColor: Color(0XFF1A3D7A),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              iconTheme: IconThemeData(
                color: Color(0xFFFFFFFF)
                  ),
              backgroundColor: Color(0XFF1A3D7A),
              expandedHeight: 210.0,
              //automaticallyImplyLeading: false,
              centerTitle: true,
              //floating: false,
              pinned: true,
              elevation: 0,
              leading: new IconButton(
                icon: new Icon(Icons.sort, size: 30,),
                onPressed: () => _scaffoldKey.currentState.openDrawer()),
                actions: <Widget>[
                 IconButton(
                icon: new Icon(Icons.notifications, size: 30,),
                onPressed: (){},// => _scaffoldKey.currentState.openDrawer()
                ),
                ],
              flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                // print('constraints=' + constraints.toString());
                top = constraints.biggest.height;
                return  FlexibleSpaceBar(
                  //centerTitle: true,
                  title: Row(
                    // mainAxisAlignment:
                    //     MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        //alignment: Alignment.bottomCenter,
                        //   padding: EdgeInsets.only(top: 10),
                        child: Text(
                         top <= 80 ? 'Recent Transaction' : "",
                          //  '${widget.orderedItem.seller.name}',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.0,
                            decoration: TextDecoration.none,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  ////////////////////Collapsed Bar/////////////////
                  background: Stack(
                    children: <Widget>[
                      Container(
                        color: Color(0XFF1A3D7A),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 141,
                                  width: 187,
                                  decoration: BoxDecoration(
                                   image: DecorationImage(image: AssetImage('assets/img/appbar1.png'),
                                   )),
                                ),
                              ],
                            ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.end,
                            //   children: <Widget>[
                            //     Container(
                            //       height: 69,
                            //       width: 120,
                            //       decoration: BoxDecoration(
                            //        image: DecorationImage(image: AssetImage('assets/img/appbar2.png'))),
                            //     ),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        //constraints: new BoxConstraints.expand(height: 256.0, ),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: top <= 90 ? 40 :top <= 80 ? 60.0 : 30, bottom: 8.0),
                        
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(bottom: 3),
                              child: Text(
                               //top <= 80 ? 'Home' : "Home",
                               top <= 90 ?  "" : "Balance",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                               //top <= 80 ? 'Home' : "Home",
                                top <= 90 ?  "" : "\$ 2,560",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40.0,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )

                  ////////////////////Collapsed Bar  End/////////////////

                  );})
            ),


            /////////////////////// Body Start //////////////////////
      
      SliverToBoxAdapter(
        child: Column(
          children: <Widget>[
            Container(
    //height: 10.0,
    alignment: Alignment.centerLeft,
    child: Container(
       // height: 100,// MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0XFF1A3D7A)
        ),
        child: Container(
          padding: EdgeInsets.only(top: 20, bottom: 0, left: 20, right: 20),
          decoration: BoxDecoration(
            color: Color(0XFFF2F4F7),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0)
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
                              "Home",
                                //top <= 90 ?  "" : "\$ 2,560",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
          ),
        )
      ),
  ),

  HomeBodySwitch(),
          ],
        ),
      )
//             new SliverStickyHeader(
//   header: new Container(
//     //height: 10.0,
//     alignment: Alignment.centerLeft,
//     child: Container(
//        // height: 100,// MediaQuery.of(context).size.height,
//         decoration: BoxDecoration(
//           color: Color(0XFF1A3D7A)
//         ),
//         child: Container(
//           padding: EdgeInsets.only(top: 20, bottom: 0, left: 20, right: 20),
//           decoration: BoxDecoration(
//             color: Color(0XFFFFFFFF),
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(25.0),
//               topRight: Radius.circular(25.0)
//             ),
//           ),
//           child: Container(
//             width: MediaQuery.of(context).size.width,
//             child: Text(
//                                //top <= 80 ? 'Home' : "Home",
//                                 top <= 90 ?  "" : "\$ 2,560",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 15.0,
//                                   decoration: TextDecoration.none,
//                                   fontFamily: 'Roboto',
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//           ),
//         )
//       ),
//   ),
//   sliver: new SliverList(
//     delegate: new SliverChildBuilderDelegate(
//       (context, i) => HomeBodySwitch(),
//       childCount: 1,
//     ),
//   ),
// ),
      /////////////////////// Body End //////////////////////
            

          ],
        ),
      ),
    );
  }
}