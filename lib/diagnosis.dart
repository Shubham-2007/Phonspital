import 'package:flutter/material.dart';
class Diagnosis extends StatefulWidget {
  @override
  _DiagnosisState createState() => _DiagnosisState();
}

class _DiagnosisState extends State<Diagnosis> {
  List<String> shops = [
    'Enter your 1 Symptoms',
    'Enter your 2 Symptoms',
    'Enter your 3 Symptoms',
    'Enter your 4 Symptoms',
    'Enter your 5 Symptoms',
    'Enter your 6 Symptoms',
    'Enter your 7 Symptoms',
    'Enter your 8 Symptoms',
    'Enter your 9 Symptoms',
    'Enter your 10 Symptoms',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: Text('Medical Diagnosis'),
        actions: [],
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Stack(children: [
              InkWell(
                onTap: () {
                  //Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             ));
                },
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    elevation: 7.0,
                    color: Colors.green,
                    child: ListTile(
                      trailing: Column(children: [
                        SizedBox(height: 5.0),
                      ]),
                      title: Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Text(
                          shops[index].toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                              color: Colors.white),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                          ),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.white))),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(.8),
                                    fontFamily: 'R'),
                                hintText: "Symptoms"),
                            //onChanged: (input) => email = input,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]);
          }),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       backgroundColor: Colors.green,
  //       elevation: 0,
  //       title: Text('Medical Diagnosis'),
  //       actions: [
  //         // IconButton(
  //         //     icon: Icon(Icons.account_circle),
  //         //     onPressed: () {
  //         //       Navigator.push(context, MaterialPageRoute(builder: (context) {
  //         //         return Profile();
  //         //       }));
  //         //     })
  //       ],
  //     ),
  //     body: SingleChildScrollView(
  //       padding: EdgeInsets.only(left: 10.0, right: 10.0,),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         children: [
  //           Container(
  //             padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 40),
  //             child: Text(
  //               "Enter your Symptoms",
  //               style: TextStyle(
  //                   fontSize: 30.0,
  //                   color: Colors.black,
  //                   fontWeight: FontWeight.bold,
  //                   fontFamily: 'R'),
  //             ),
  //           ),
  //           SizedBox(
  //                   height: 10,
  //                 ),
  //           Container(
  //             padding: EdgeInsets.only(left: 10.0, right: 10.0,),
  //             decoration: BoxDecoration(
  //                 border: Border(bottom: BorderSide(color: Color(0xFF009245)))),
  //             child: TextFormField(
  //               decoration: InputDecoration(
  //                   border: InputBorder.none,
  //                   hintStyle: TextStyle(
  //                       color: Colors.grey.withOpacity(.8), fontFamily: 'R'),
  //                   hintText: "Symptoms"),
  //               //onChanged: (input) => email = input,
  //             ),
  //           ),
  //           Container(
  //             padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 40),
  //             child: Text(
  //               "Enter your Symptoms",
  //               style: TextStyle(
  //                   fontSize: 30.0,
  //                   color: Colors.black,
  //                   fontWeight: FontWeight.bold,
  //                   fontFamily: 'R'),
  //             ),
  //           ),
  //           SizedBox(
  //                   height: 10,
  //                 ),
  //           Container(
  //             padding: EdgeInsets.only(left: 10.0, right: 10.0,),
  //             decoration: BoxDecoration(
  //                 border: Border(bottom: BorderSide(color: Color(0xFF009245)))),
  //             child: TextFormField(
  //               decoration: InputDecoration(
  //                   border: InputBorder.none,
  //                   hintStyle: TextStyle(
  //                       color: Colors.grey.withOpacity(.8), fontFamily: 'R'),
  //                   hintText: "Symptoms"),
  //               //onChanged: (input) => email = input,
  //             ),
  //           ),
  //           Container(
  //             padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 40),
  //             child: Text(
  //               "Enter your Symptoms",
  //               style: TextStyle(
  //                   fontSize: 30.0,
  //                   color: Colors.black,
  //                   fontWeight: FontWeight.bold,
  //                   fontFamily: 'R'),
  //             ),
  //           ),
  //           SizedBox(
  //                   height: 10,
  //                 ),
  //           Container(
  //             padding: EdgeInsets.only(left: 10.0, right: 10.0,),
  //             decoration: BoxDecoration(
  //                 border: Border(bottom: BorderSide(color: Color(0xFF009245)))),
  //             child: TextFormField(
  //               decoration: InputDecoration(
  //                   border: InputBorder.none,
  //                   hintStyle: TextStyle(
  //                       color: Colors.grey.withOpacity(.8), fontFamily: 'R'),
  //                   hintText: "Symptoms"),
  //               //onChanged: (input) => email = input,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
