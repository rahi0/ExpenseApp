import 'package:expanse_manegment/Widgets/homePageWidgets/allContainer.dart';
import 'package:flutter/material.dart';

enum WidgetMarker { all, income, expance }

class HomeBodySwitch extends StatefulWidget {
  @override
  _HomeBodySwitchState createState() => _HomeBodySwitchState();
}

class _HomeBodySwitchState extends State <HomeBodySwitch> with SingleTickerProviderStateMixin <HomeBodySwitch>{
WidgetMarker selectedWidgetMarker = WidgetMarker.all; 

AnimationController _controller;
  Animation _animation;
 
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Container buttonContainer(String picture, String title, Color txtColor, FontWeight txtFont) {
    return Container(
                    padding: EdgeInsets.fromLTRB(15, 3, 15, 3),
                    margin: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        color: Color(0XFFFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      //width: MediaQuery.of(context).size.width,
                      height: 29,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                              child: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.red,
                          )),
                          Container(
                            //width: 150,
                            //color: Colors.grey,
                            child: Text(
                              title,
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                color: txtColor, //Color(0XFF1A3D7A),
                                fontSize: 16.0,
                                decoration: TextDecoration.none,
                                fontFamily: 'Roboto',
                                fontWeight: txtFont,// FontWeight.bold,
                              ),
                            ),
                          ),

                          
                        ],
                      ));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
            decoration: BoxDecoration(
              color: Color(0XFFF2F4F7),
            ),
            child: Row(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
           ///////////////// All Button  Start///////////////

                GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedWidgetMarker = WidgetMarker.all;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 3, 15, 3),
                      decoration: BoxDecoration(
                        color: Color(0XFFFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Container(
                        child: Text(
                          "All",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: (selectedWidgetMarker == WidgetMarker.all)
                                    ? Color(0XFF1A3D7A) : Colors.grey,
                            fontSize: 16.0,
                            decoration: TextDecoration.none,
                            fontFamily: 'Roboto',
                            fontWeight: (selectedWidgetMarker == WidgetMarker.all)
                                    ?FontWeight.bold : FontWeight.normal,
                          ),
                        ),
                      ))
                ),

                ///////////////// All Button  End///////////////
          GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedWidgetMarker = WidgetMarker.income;
                    });
                  },
            child: buttonContainer("jj", "income", 
            (selectedWidgetMarker == WidgetMarker.income) ? Color(0XFF1A3D7A) : Colors.grey,
            (selectedWidgetMarker == WidgetMarker.income) ? FontWeight.bold : FontWeight.normal)),


         GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedWidgetMarker = WidgetMarker.expance;
                    });
                  },
            child: buttonContainer("jj", "Expance",
            (selectedWidgetMarker == WidgetMarker.expance) ? Color(0XFF1A3D7A) : Colors.grey,
            (selectedWidgetMarker == WidgetMarker.expance) ? FontWeight.bold : FontWeight.normal
            )),

        ],
      ),
          ),


          /////////////////// Body Start////////////
          FutureBuilder(
            future: _playAnimation(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return Container(
          child: getCustomContainer(),
          );
            },
          ),

          /////////////////// Body end////////////
        ],
      ),
    );
  }

   ////////Animation Play////////
  _playAnimation() {
    _controller.reset();
    _controller.forward();
  }


//////// All Body /////////
  Widget getAllWidget() {
  return FadeTransition(
    opacity: _animation,
      child: AllContainer()
  );
}

Widget getIncomeWidget() {
  return FadeTransition(
    opacity: _animation,
      child: Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      color: Colors.green,
    ),
  );
}

Widget getExpanceWidget() {
  return FadeTransition(
    opacity: _animation,
      child: Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
    ),
  );
}
//////// All Body /////////


//////// Selected Body Method /////////
 
 Widget getCustomContainer() {
  switch (selectedWidgetMarker) {
    case WidgetMarker.all:
      return getAllWidget();
    case WidgetMarker.income:
      return getIncomeWidget();
    case WidgetMarker.expance:
      return getExpanceWidget();
  }
  return getAllWidget();
}
//////// Selected Body Method /////////


}