import 'package:flutter/material.dart';
import 'package:phonspital/home.dart';

class Appphoto1 extends StatefulWidget {
  @override
  _AppphotoState1 createState() => _AppphotoState1();
}

class _AppphotoState1 extends State<Appphoto1> {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/1.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.only(
              top: 595,
            ),
            child: Center(
              child: Stack(
                children: <Widget>[
                  Container(
                    child: MaterialButton(
                      height: 73.0,
                      minWidth: 300.0,
                      elevation: 10.0,
                      color: Color(0xFF009245),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        'Next',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      onPressed: () {
                        //_signOut(context);
                        Route route = MaterialPageRoute(
                            builder: (context) => Appphoto2());
                        Navigator.pushReplacement(context, route);
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 9, left: 15),
                    child: MaterialButton(
                      height: 55.0,
                      minWidth: 271.0,
                      color: Color(0xFF8CC63F),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        'Next',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      onPressed: () {
                        //_signOut(context);
                        Route route = MaterialPageRoute(
                            builder: (context) => Appphoto2());
                        Navigator.pushReplacement(context, route);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Appphoto2 extends StatefulWidget {
  @override
  _AppphotoState2 createState() => _AppphotoState2();
}

class _AppphotoState2 extends State<Appphoto2> {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/2.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.only(
              top: 595,
            ),
            child: Center(
              child: Stack(
                children: <Widget>[
                  Container(
                    child: MaterialButton(
                      height: 73.0,
                      minWidth: 300.0,
                      elevation: 10.0,
                      color: Color(0xFF009245),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        'Next',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      onPressed: () {
                        //_signOut(context);
                        Route route = MaterialPageRoute(
                            builder: (context) => Appphoto3());
                        Navigator.pushReplacement(context, route);
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 9, left: 15),
                    child: MaterialButton(
                      height: 55.0,
                      minWidth: 271.0,
                      color: Color(0xFF8CC63F),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        'Next',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      onPressed: () {
                        //_signOut(context);
                        Route route = MaterialPageRoute(
                            builder: (context) => Appphoto3());
                        Navigator.pushReplacement(context, route);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Appphoto3 extends StatefulWidget {
  @override
  _AppphotoState3 createState() => _AppphotoState3();
}

class _AppphotoState3 extends State<Appphoto3> {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/3.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.only(
              top: 595,
            ),
            child: Center(
              child: Stack(
                children: <Widget>[
                  Container(
                    child: MaterialButton(
                      height: 73.0,
                      minWidth: 300.0,
                      elevation: 10.0,
                      color: Color(0xFF009245),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        'Next',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      onPressed: () {
                        //_signOut(context);
                        Route route = MaterialPageRoute(
                            builder: (context) => Appphoto4());
                        Navigator.pushReplacement(context, route);
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 9, left: 15),
                    child: MaterialButton(
                      height: 55.0,
                      minWidth: 271.0,
                      color: Color(0xFF8CC63F),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        'Next',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      onPressed: () {
                        //_signOut(context);
                        Route route = MaterialPageRoute(
                            builder: (context) => Appphoto4());
                        Navigator.pushReplacement(context, route);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Appphoto4 extends StatefulWidget {
  @override
  _AppphotoState4 createState() => _AppphotoState4();
}

class _AppphotoState4 extends State<Appphoto4> {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/4.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.only(
              top: 595,
            ),
            child: Center(
              child: Stack(
                children: <Widget>[
                  Container(
                    child: MaterialButton(
                      height: 73.0,
                      minWidth: 300.0,
                      elevation: 10.0,
                      color: Color(0xFF009245),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        'Next',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      onPressed: () {
                        //_signOut(context);
                        Route route =
                            MaterialPageRoute(builder: (context) => Home());
                        Navigator.pushReplacement(context, route);
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 9, left: 15),
                    child: MaterialButton(
                      height: 55.0,
                      minWidth: 271.0,
                      color: Color(0xFF8CC63F),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        "Let's Go",
                        style: TextStyle(fontSize: 18.0),
                      ),
                      onPressed: () {
                        //_signOut(context);
                        Route route =
                            MaterialPageRoute(builder: (context) => Home());
                        Navigator.pushReplacement(context, route);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
