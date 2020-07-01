import 'package:flutter/material.dart';
import 'package:phonspital/apphotos.dart';
import 'package:phonspital/home.dart';

class Usersignup2 extends StatefulWidget {
  Usersignup2({Key key}) : super(key: key);

  @override
  _UsersignupState createState() => _UsersignupState();
}

class _UsersignupState extends State<Usersignup2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8CC63F),
      body: Container(
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 0.0, right: 30.0, top: 80),
                child: Text(
                  "Details",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'R'),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Color(0xFF009245)))),
                      child: Row(children: <Widget>[
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(.8),
                                    fontFamily: 'R'),
                                hintText: "Height"),
                            //onChanged: (input) => name = input,
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Color(0xFF009245)))),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                color: Colors.grey.withOpacity(.8),
                                fontFamily: 'R'),
                            hintText: "weight"),
                        //onChanged: (input) => email = input,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Color(0xFF009245)))),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                color: Colors.grey.withOpacity(.8),
                                fontFamily: 'R'),
                            hintText: "Age"),
                        keyboardType: TextInputType.number,
                        // onChanged: (input) => number = input,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Color(0xFF009245)))),
                      child: TextFormField(
                        obscureText: false,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                color: Colors.grey.withOpacity(.8),
                                fontFamily: 'R'),
                            hintText: "Blood Group"),
                        //onChanged: (input) => password = input,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  width: 200.0,
                  child: MaterialButton(
                    color: Colors.white,
                    textColor: Color(0xFF009245),
                    elevation: 5.0,
                    height: 50.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {
                       Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Appphoto1();
                          }));
                    },
                    child: Text(
                      'Done',
                      style: TextStyle(fontSize: 20.0, fontFamily: 'R'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
            ],
          )),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
