import 'package:flutter/material.dart';


class Shops extends StatefulWidget {
  @override
  _ShopsState createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {
  List<String> shops = [
    'Sheeriji Medical',
    'Empal chemist',
    'Sai medical',
    'Tulsi Medical',
    'Dens Chemist',
    'Krupa Medical',
    'JayShakti Chemist',
    'Sheeriji Medical',
    'Drugist and Chemist',
    'Sai medical',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: Text('Pharmacy'),
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
                  padding: EdgeInsets.only(left: 40.0, right: 10.0, top: 10.0),
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
                          color: Colors.red,
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          locs[index],
                          style: TextStyle(fontSize: 12.0, color: Colors.white),
                        ),
                      ]),
                      title: Container(
                        margin: EdgeInsets.only(left:15.0),
                        child: Text(
                          shops[index].toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                              color: Colors.white),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8.0,left:15.0),
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
                  child: Icon(Icons.shop, color: Colors.black, size: 37.0),
                ),
              ),
            ]);
          }),
    );
  }
}