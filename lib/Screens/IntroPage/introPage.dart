import 'package:expanse_manegment/Screens/LoginPage/loginPage.dart';
import 'package:expanse_manegment/customPlugin/routeTransition/routeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController controller = PageController(initialPage: 0);



  Container introContainer(String picture, String title) {
    return Container(
                
                
                child: Column(
                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   

                    //////////Picture Portion Start ///////
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: (MediaQuery.of(context).size.height / 2) - 45,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(picture),
                              fit: BoxFit.fill)),
                    ),
                     //////////Picture Portion end ///////

                    /////// Bottom Portion Start ////////
                    
                    Container(
                      //height:(MediaQuery.of(context).size.height / 2) - 45,
                      width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 20, bottom: 20,),
                //color: Colors.red,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ////// Text Start ////////
                    Container(
                      width: MediaQuery.of(context).size.width,
                     // color: Colors.green,
                      child: Column(
                        children: <Widget>[
                          Container(
                              child: Text(
                                title,
                                //  '${widget.orderedItem.seller.name}',
                                //overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF1A3D7A),
                                  fontSize: 17.0,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    ////// Text End ////////
                    
               
                  ],
                ),
              ),
                    /////// Bottom Portion end ////////
                  ],
                ),
              );
  }





  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 30),
        decoration: BoxDecoration(
                  image: DecorationImage(
                              image: AssetImage('assets/img/bg2.png'),
                              colorFilter: new ColorFilter.mode(
                             Colors.white.withOpacity(0.9), BlendMode.hardLight),
                              fit: BoxFit.fill)
                ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

             ////// Logo Start ///////////
                Container(
                        width: 67,
                        height:  26,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/img/AppifyLab.png'),
                                fit: BoxFit.fill)),
                      ),
                /////// Logo End ///////////
                
            Expanded(
               child: Container(
                //height: 200,
                padding: EdgeInsets.only(bottom: 30, top: 50, left: 10, right: 10),
                width: MediaQuery.of(context).size.width,
                //color: Colors.red,
                child: PageIndicatorContainer(
                length: 2,
                //shape: IndicatorShape.roundRectangleShape(size: Size.square(12),cornerSize: Size.square(3)),
                shape: IndicatorShape.circle(size: 15,),
                align: IndicatorAlign.bottom,
                indicatorColor: Colors.grey,
                indicatorSelectorColor: Color(0xFF1A3D7A),
                indicatorSpace: 10.0,
                child: PageView(
                  controller: controller,
                  //scrollDirection: Axis.vertical,
                  //pageSnapping: false,
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[

                    introContainer("assets/img/intro1.png", "Estimate your budget",),
                    introContainer("assets/img/intro2.png", "Cost minimisation",),

                  ],
                ),
                
      )),
            ),


            ///////////////// Log In Button  Start///////////////
                      Container(
                        margin: EdgeInsets.only(bottom: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 30, right: 30),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    color: Colors.white
                                  ),
                                  //width: MediaQuery.of(context).size.width,
                                  height: 45,
                                  child: RaisedButton(
                                    onPressed: (){
                                      Navigator.push( context, SlideLeftRoute(page: LoginPage()));
                                    },

                                    child: Container(
                                      //width: 150,
                                      //color: Colors.grey,
                                      //padding: EdgeInsets.only(left: 30, right: 30),
                                      child: Text(
                                         'Log In',
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(
                                            color: Color(0XFF1A3D7A),
                                            fontSize: 16.0,
                                            decoration: TextDecoration.none,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.normal,
                                          ),
                                      ),
                                    ),
                                    color: Colors.white,
                                    elevation: 2.0,
                                    //splashColor: Colors.blueGrey,
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(5.0)),
                                  )
                                  ),
                            ),
                          ],
                        ),
                      ),
                           ///////////////// Log In Button  End///////////////
          ],
        )
          
        ),
    );
  }
}