import 'package:flutter/material.dart';
import 'package:phonspital/hospital%20details.dart';

class Hospitals extends StatefulWidget {
  final name;
  final address;
  final tel;

  const  Hospitals({Key key, this.name, this.address, this.tel})
      : super(key: key);
  @override
  _HospitalsState createState() => _HospitalsState();
}

class _HospitalsState extends State<Hospitals> {
  List<String> shops = [
    'City Hospital',
    'Yashfeen hospital',
    'Shushrusha hospital',
    'Daboo hospital',
    'Shroff Hospital',
    'Anand hospital',
    'City Hospital',
    'Yashfeen hospital',
    'Shushrusha hospital',
    'Daboo hospital',
  ];

  List<String> locs = [
    '0.4 KM',
    '0.2 KM',
    '0.5 KM',
    '0.6 KM',
    '0.4 KM',
    '0.8 KM',
    '0.5 KM',
    '0.7 KM',
    '0.4 KM',
    '0.5 KM',
  ];

List<String> address = [
    'surat',
    'surat',
    'surat',
    'surat',
    'surat',
    'surat',
    'surat',
    'surat',
    'surat',
    'surat',

  ];

  List<String> number = [
    '1234567890',
    '1234567891',
    '1234567892',
    '1234567893',
    '1234567894',
    '1234567895',
    '1234567896',
    '1234567897',
    '1234567898',
    '1234567899',
    '1234567900',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: Text('Hospital'),
        actions: [],
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Stack(children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Hospitaldetails(name: shops[index].toString(),
                          address: address[index].toString(),
                          tel: number[index].toString())));
                },
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 40.0, right: 20.0, top: 10.0),
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    elevation: 7.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.green,
                    child: ListTile(
                      trailing: Column(children: [
                        Icon(
                          Icons.location_on,
                          size: 32.0,
                          color: Colors.white,
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          locs[index],
                          style: TextStyle(fontSize: 12.0, color: Colors.white),
                        ),
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
                        child: Text(
                          "Vijalpore, Navsari",
                          style: TextStyle(color: Colors.white, fontSize: 13.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 5.0,
                child: Container(
                  width: 70.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(width: 2.0, color: Colors.grey),
                  ),
                  child: Icon(Icons.local_hospital, color: Colors.black, size: 37.0),
                ),
              ),
            ]);
          }),
    );
  }
}