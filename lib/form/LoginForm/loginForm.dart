import 'package:expanse_manegment/Screens/HomePage/homePage.dart';
import 'package:expanse_manegment/customPlugin/routeTransition/routeAnimation.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();


  _showMsg(msg) { //
    final snackBar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
   }

  @override
  Widget build(BuildContext context) {
    return Container(
          height:MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFFF2F4F7),
          child: SingleChildScrollView(
                    child: Column(
              children: <Widget>[

                ////// Logo Start ///////////
                Container(
                  margin: EdgeInsets.only(top: 50, bottom: 60),
                        width: 95,
                        height:  37,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/img/AppifyLab.png'),
                                fit: BoxFit.fill)),
                      ),
                /////// Logo End ///////////
                



                ////// mIDDLE Part Start ///////////
                Container(
                 // color: Colors.yellow,
                    margin: EdgeInsets.only(top: 20, bottom: 40),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[


                ///////////////// Type Name Textfield  Start///////////////
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: TextField(
                    style: TextStyle(color: Color(0xFF000000)),
                    cursorColor: Color(0xFF9b9b9b),
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    
                    decoration: InputDecoration(
                      prefixIcon: Container(
                          margin: EdgeInsets.only(right: 5, left: 20),
                          decoration: BoxDecoration(
                             // color: Colors.green[300].withOpacity(0.2),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                          child: Icon(
                            Icons.person_outline,
                            color: Color(0xFF1A3D7A),
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Color(0xFF1A3D7A), width: 1.5)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Color(0xFF1A3D7A), width: 1.5)),
                      hintText: "Type your name",
                      hintStyle: TextStyle(
                          color: Color(0xFF1A3D7A).withOpacity(0.4),
                          fontSize: 15,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.normal),
                      contentPadding: EdgeInsets.only(left: 20, bottom: 12, top: 12),
                      fillColor: Color(0xFFFFFFFF),
                      filled: true,
                      
                    ),
                  ),
                ),

                ///////////////// Type Name Textfield  End///////////////
                
                ///////////////// Type Number Textfield  Start///////////////
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: TextField(
                    style: TextStyle(color: Color(0xFF000000)),
                    cursorColor: Color(0xFF9b9b9b),
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    
                    decoration: InputDecoration(
                      prefixIcon: Container(
                          margin: EdgeInsets.only(right: 5, left: 20),
                          decoration: BoxDecoration(
                             // color: Colors.green[300].withOpacity(0.2),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                          child: Icon(
                            Icons.phone,
                            color: Color(0xFF1A3D7A),
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Color(0xFF1A3D7A), width: 1.5)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Color(0xFF1A3D7A), width: 1.5)),
                      hintText: "Type your number",
                      hintStyle: TextStyle(
                          color: Color(0xFF1A3D7A).withOpacity(0.4),
                          fontSize: 15,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.normal),
                      contentPadding: EdgeInsets.only(left: 20, bottom: 12, top: 12),
                      fillColor: Color(0xFFFFFFFF),
                      filled: true,
                      
                    ),
                  ),
                ),

                ///////////////// Type Number Textfield  End///////////////
                         
                            
                        ],
                      ),
                ),

                ////// mIDDLE Part End ///////////


                 ////// Bottom Part Start ///////////
                Container(
                  //color: Colors.yellow,
                   
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ///////////////// Log In Button  Start///////////////
                          Container(
                            margin: EdgeInsets.only(left: 60, right: 60),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                color: Colors.white
                              ),
                              width: MediaQuery.of(context).size.width,
                              height: 45,
                              child: RaisedButton(
                                onPressed: _login,

                                child: Container(
                                  //width: 150,
                                  //color: Colors.grey,
                                  child: Text(
                                     'Continue',
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        color: Color(0XFF1A3D7A),
                                        fontSize: 15.0,
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
                                    borderRadius: new BorderRadius.circular(10.0)),
                              )),
                               ///////////////// Log In Button  End///////////////
                            
                            Container(
                              margin: EdgeInsets.only(top: 55),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                        width: 20,
                        height:  20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/img/google.png'),
                                fit: BoxFit.fill)),
                      ),

                                Container(
                                  child: Text(
                                    " Sign in with Google",
                                    style: TextStyle(
                                      color: Color(0XFF1A3D7A),
                                      fontSize: 14.0,
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                )
                                ],
                              ),
                            )
                        ],
                      ),
                )

                ////// Bottom Part End ///////////
              ],
            ),
          ),
        );
  }


  void _login() async{

    if(nameController.text.isEmpty){
        return _showMsg("Name is empty");
      }
      else if(phoneController.text.isEmpty){
        return _showMsg("Phone is empty");
      }
    var data = {
        'name' : nameController.text, 
        'phone' : phoneController.text,
    }; 
    print(data);
    Navigator.push( context, SlideLeftRoute(page: HomePage()));
  }

}