import 'package:flutter/material.dart';

class Hospitaldetails extends StatefulWidget {
  final name;
  final address;
  final tel;

  const Hospitaldetails({Key key, this.name, this.address, this.tel})
      : super(key: key);

  @override
  _HospitaldetailsState createState() => _HospitaldetailsState();
}

class _HospitaldetailsState extends State<Hospitaldetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                color: Colors.green.shade700,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.45,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text(
                          widget.name.toString().toUpperCase(),
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        )),
                    SizedBox(height: 10.0),
                    Container(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text(
                          'Address : ' + widget.address,
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        )),
                    SizedBox(height: 20.0),
                    Container(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text('Tel : ' + widget.tel,
                            style: TextStyle(
                                color: Colors.white, fontSize: 20.0))),
                    SizedBox(
                      height: 100.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: 40.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1.0, color: Colors.white),
                            borderRadius: BorderRadius.circular(30.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(2, 2),
                                blurRadius: 5.0
                              )
                            ]
                          ),
                          child: Text(
                            'BOOK AN APPOINTMENT',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/map.png',
                        ),
                        fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 2),
                          blurRadius: 5.0)
                    ],
                    border: Border.all(width: 1.0, color: Colors.transparent),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0))),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.width * 0.6,
              left: MediaQuery.of(context).size.width * 0.85,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: Colors.black,
                    offset: Offset(0, 3),
                    blurRadius: 3.0)
                  ]
                ),
                child: IconButton(
                    icon: Icon(
                      Icons.location_on,
                      color: Colors.green,
                    ),
                    onPressed: () {}),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Image.asset('assets/chatbot.png', fit: BoxFit.contain)),
      ),
    );
  }
}