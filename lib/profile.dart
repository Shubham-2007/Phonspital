import 'package:flutter/material.dart';
import 'package:phonspital/main.dart';
import 'package:phonspital/signup.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        //leading: Container(),
        title: Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'R',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 25),
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(200)),
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                        Colors.deepOrangeAccent[10],
                        BlendMode.color,
                      ),
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/id.png')),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              child: Card(
                child: Container(
                  padding: EdgeInsets.only(top: 5),
                  width: MediaQuery.of(context).size.width - 200.0,
                  height: MediaQuery.of(context).size.height - 680,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Name',
                          style: TextStyle(fontSize: 20, fontFamily: 'R'),
                        ),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Container(
                        child: Text(
                          'name  surname',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'R',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                elevation: 10,
              ),
            ),
            Container(
              child: Card(
                child: Container(
                  padding: EdgeInsets.only(top: 5),
                  width: MediaQuery.of(context).size.width - 100.0,
                  height: MediaQuery.of(context).size.height - 680,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Email',
                          style: TextStyle(fontSize: 20, fontFamily: 'R'),
                        ),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Container(
                        child: Text(
                          'Email',
                          style: TextStyle(fontSize: 18, fontFamily: 'R'),
                        ),
                      ),
                    ],
                  ),
                ),
                elevation: 10,
              ),
            ),
            Container(
              /*decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
              ),*/
              child: Card(
                child: Container(
                  padding: EdgeInsets.only(top: 5),
                  width: MediaQuery.of(context).size.width - 200.0,
                  height: MediaQuery.of(context).size.height - 680,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Phone Number',
                          style: TextStyle(fontSize: 20, fontFamily: 'R'),
                        ),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Container(
                        child: Text(
                          'phone number',
                          style: TextStyle(fontSize: 18, fontFamily: 'R'),
                        ),
                      ),
                    ],
                  ),
                ),
                elevation: 10,
              ),
            ),
            Container(
              /*decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
              ),*/
              child: Card(
                child: Container(
                  padding: EdgeInsets.only(top: 5),
                  width: MediaQuery.of(context).size.width - 100.0,
                  height: MediaQuery.of(context).size.height - 680,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Blood Group',
                          style: TextStyle(fontSize: 20, fontFamily: 'R'),
                        ),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Container(
                        child: Text(
                          'O +ve',
                          style: TextStyle(fontSize: 18, fontFamily: 'R'),
                        ),
                      ),
                    ],
                  ),
                ),
                elevation: 10,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              height: 45.0,
              minWidth: 300.0,
              elevation: 10.0,
              color: Colors.green,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                'Log out',
                style: TextStyle(fontSize: 18.0),
              ),
              onPressed: () {
                //_signOut(context);
                Route route =
                    MaterialPageRoute(builder: (context) => MyHomePage());
                Navigator.pushReplacement(context, route);
              },
            )
          ],
        ),
      ),
    );
  }
}

// class orgProfile extends StatefulWidget {
//   @override
//   _orgProfileState createState() => _orgProfileState();
// }

// class _orgProfileState extends State<orgProfile> {

//   bool _dark = false;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _dark=false;

//   }
//   bool visibilityicon = false;
//   Brightness _getBrightness() {
//     return _dark ? Brightness.dark : Brightness.light;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Theme(
//       isMaterialAppTheme: true,
//       data: ThemeData(
//         brightness: _getBrightness(),
//       ),
//       child: Scaffold(
//         backgroundColor: (_dark ? null : Colors.white),
//         body: Container(
//           color: (_dark ? null : Colors.white),
//           width: MediaQuery.of(context).size.width,
//           child: ListView(
//             children: <Widget>[
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: <Widget>[
//                   IconButton(
//                     icon: Icon(Icons.developer_mode),
//                     onPressed: () {
//                       setState(() {
//                         _dark = !_dark;
//                       });
//                     },
//                   )
//                 ],
//               ),
//               Center(
//                 child: Stack(
//                   children: <Widget>[
//                     Container(
//                       padding: EdgeInsets.only(top: 75.0, left: 90.0),
//                       child: Text('Pandavas',
//                           style: TextStyle(
//                             fontSize: 65.0,
//                             color: Colors.deepOrange,
//                             fontWeight: FontWeight.bold,
//                           )),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20.0,),
//               Container(
//                 margin: EdgeInsets.only(left: 20.0),
//                 height: 65,
//                 width: MediaQuery.of(context).size.width,
//                 color: (_dark ? null : Colors.white),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Container(
//                       width: 55,
//                       height: 55,
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.white,
//                         ),
//                         shape: BoxShape.circle,
//                         color: (_dark ? Colors.black : Colors.white),
//                         boxShadow: [
//                           new BoxShadow(
//                             color: (_dark ? Colors.white : Colors.black38),
//                             blurRadius: 7.0,
//                           ),
//                         ],
//                       ),
//                       padding: EdgeInsets.only(right: 2),
//                       child: Icon(
//                         Icons.school,
//                         color: Colors.deepOrangeAccent,
//                         size: 35,
//                       ),
//                     ),
//                     Center(
//                       child: Container(
//                         padding: EdgeInsets.only(
//                             left: 0.0, right: 0, top: 0, bottom: 0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Container(
//                               padding: EdgeInsets.only(
//                                   left: 0.0, right: 0, top: 10, bottom: 3),
//                               decoration: BoxDecoration(),
//                               child: Text(
//                                 "Institute Name",
//                                 style: TextStyle(
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.grey,
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               padding: EdgeInsets.only(
//                                   left: 00.0, right: 0, top: 0, bottom: 10),
//                               child: Text(
//                                 "$name",
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   fontSize: 21,
//                                   fontWeight: FontWeight.bold,
//                                   color:
//                                   (_dark ? Colors.white : Colors.black87),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 55,
//                       height: 55,
//                       decoration: BoxDecoration(
//                         color: (_dark ? null : Colors.white),
//                       ),
//                       child: visibilityicon
//                           ? MaterialButton(
//                         onPressed: () {
//                           setState(() {
//                             visibilityicon = !visibilityicon;
//                           });
//                         },
//                         child: Icon(
//                           Icons.edit,
//                           color: Colors.grey,
//                           size: 30,
//                         ),
//                       )
//                           : SizedBox(
//                         height: 0.0,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 20.0),
//                 height: 65,
//                 width: MediaQuery.of(context).size.width,
//                 color: (_dark ? null : Colors.white),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Container(
//                       width: 55,
//                       height: 55,
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.white,
//                         ),
//                         shape: BoxShape.circle,
//                         color: (_dark ? Colors.black : Colors.white),
//                         boxShadow: [
//                           new BoxShadow(
//                             color: (_dark ? Colors.white : Colors.black38),
//                             blurRadius: 10.0,
//                           ),
//                         ],
//                       ),
//                       padding: EdgeInsets.only(right: 0),
//                       child: Icon(
//                         Icons.contact_mail,
//                         color: Colors.deepOrangeAccent,
//                         size: 30,
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(
//                           left: 0.0, right: 0, top: 0, bottom: 0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Container(
//                             padding: EdgeInsets.only(
//                                 left: 40.0, right: 0, top: 10, bottom: 3),
//                             margin: EdgeInsets.all(0),
//                             decoration: BoxDecoration(),
//                             child: Text(
//                               "E-Mail",
//                               style: TextStyle(
//                                 fontSize: 13,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.grey,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(
//                                 left: 00.0, right: 0, top: 0, bottom: 10),
//                             margin: EdgeInsets.all(0),
//                             child: Text(
//                               "$email",
//                               style: TextStyle(
//                                 fontSize: 21,
//                                 fontWeight: FontWeight.bold,
//                                 color: (_dark ? Colors.white : Colors.black87),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: 55,
//                       height: 55,
//                       decoration: BoxDecoration(
//                         color: (_dark ? null : Colors.white),
//                       ),
//                       child: visibilityicon
//                           ? MaterialButton(
//                         onPressed: () {},
//                         child: Icon(
//                           Icons.edit,
//                           color: Colors.grey,
//                           size: 30,
//                         ),
//                       )
//                           : SizedBox(
//                         height: 0.0,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 20.0),
//                 height: 65,
//                 width: MediaQuery.of(context).size.width,
//                 color: (_dark ? null : Colors.white),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Container(
//                       width: 55,
//                       height: 55,
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: (_dark ? Colors.white : Colors.white),
//                         ),
//                         shape: BoxShape.circle,
//                         color: (_dark ? Colors.black : Colors.white),
//                         boxShadow: [
//                           new BoxShadow(
//                             color: (_dark ? Colors.white : Colors.black38),
//                             blurRadius: 7.0,
//                           ),
//                         ],
//                       ),
//                       padding: EdgeInsets.only(right: 0),
//                       child: Icon(
//                         Icons.phone_iphone,
//                         color: Colors.deepOrangeAccent,
//                         size: 35,
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(
//                           left: 0.0, right: 0, top: 0, bottom: 0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Container(
//                             padding: EdgeInsets.only(
//                                 left: 35.0, right: 0, top: 10, bottom: 3),
//                             margin: EdgeInsets.all(0),
//                             decoration: BoxDecoration(),
//                             child: Text(
//                               "Phone",
//                               style: TextStyle(
//                                 fontSize: 13,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.grey,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(
//                                 left: 00.0, right: 0, top: 0, bottom: 10),
//                             margin: EdgeInsets.all(0),
//                             child: Text(
//                               "$number",
//                               style: TextStyle(
//                                 fontSize: 21,
//                                 fontWeight: FontWeight.bold,
//                                 color: (_dark ? Colors.white : Colors.black87),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: 55,
//                       height: 55,
// //                      padding: EdgeInsets.only(left: 100),
//                       decoration: BoxDecoration(
//                         color: (_dark ? null : Colors.white),
//                       ),
//                       child: visibilityicon
//                           ? MaterialButton(
//                         onPressed: () {},
//                         child: Icon(
//                           Icons.edit,
//                           color: Colors.grey,
//                           size: 30,
//                         ),
//                       )
//                           : SizedBox(
//                         height: 0.0,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 20.0),
//                 height: 65,
//                 width: MediaQuery.of(context).size.width,
//                 color: (_dark ? null : Colors.white),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Container(
//                       width: 55,
//                       height: 55,
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: (_dark ? Colors.white : Colors.white),
//                         ),
//                         shape: BoxShape.circle,
//                         color: (_dark ? Colors.black : Colors.white),
//                         boxShadow: [
//                           new BoxShadow(
//                             color: (_dark ? Colors.white : Colors.black38),
//                             blurRadius: 7.0,
//                           ),
//                         ],
//                       ),
//                       padding: EdgeInsets.only(right: 0),
//                       child: Icon(
//                         Icons.my_location,
//                         color: Colors.deepOrangeAccent,
//                         size: 30,
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(
//                           left: 0.0, right: 0, top: 0, bottom: 0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Container(
//                             padding: EdgeInsets.only(
//                                 left: 0.0, right: 0, top: 10, bottom: 3),
//                             margin: EdgeInsets.all(0),
//                             decoration: BoxDecoration(),
//                             child: Text(
//                               "Location",
//                               style: TextStyle(
//                                 fontSize: 13,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.grey,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(
//                                 left: 00.0, right: 0, top: 0, bottom: 10),
//                             margin: EdgeInsets.all(0),
//                             child: Text(
//                               "Surat",
//                               style: TextStyle(
//                                 fontSize: 21,
//                                 fontWeight: FontWeight.bold,
//                                 color: (_dark ? Colors.white : Colors.black87),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: 55,
//                       height: 55,
// //                      padding: EdgeInsets.only(left: 170),
//                       decoration: BoxDecoration(
//                         color: (_dark ? null : Colors.white),
//                       ),
//                       child: visibilityicon
//                           ? MaterialButton(
//                         onPressed: () {},
//                         child: Icon(
//                           Icons.edit,
//                           color: Colors.grey,
//                           size: 30,
//                         ),
//                       )
//                           : SizedBox(
//                         height: 0.0,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: <Widget>[
//                   Container(
//                     margin: EdgeInsets.only(bottom: 10.0,right: 10.0),
//                     width: 55,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         color: Colors.deepOrangeAccent,
//                       ),
//                       borderRadius: BorderRadius.circular(50.0),
//                       color: Colors.deepOrangeAccent,
//                       boxShadow: [
//                         new BoxShadow(
//                           color: Colors.black26,
//                           blurRadius: 7.0,
//                         ),
//                       ],
//                     ),
//                     child: MaterialButton(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(50.0),
//                         ),
//                       onPressed: () {
//                         setState(() {
//                           visibilityicon = !visibilityicon;
//                         });
//                       },
//                       child: Icon(
//                           visibilityicon?Icons.change_history:Icons.edit
//                         )
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
