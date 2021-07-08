import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_version1_bms/qr/create_qr_code.dart';
import 'package:flutter_version1_bms/qr/scan_qr_code.dart';

void main() => runApp(
    MyApp(),
);

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Homepage'),
        backgroundColor: Colors.blue,
      ),
      body: Material(
        child: GestureDetector(
          onTap: () {

          },
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('assets/qrcode.png',
              width: 120,
                height: 120,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SideDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
              child: Center(
                child: Image.asset(
                  'assets/baguiologo.png',
                  width: 80,
                  height: 80,
                ),
              ),
            decoration: BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage('assets/landscape.jpg'),
                  fit: BoxFit.cover
            ),
          ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: ()=> {

            },
          ),
          ListTile(
            title: Text('Scan QR Code'),
            onTap: () => {
              CreateQRCode,
              ScanQRCode
            },
          ),
          ListTile(
            title: Text('List of businesses'),
            onTap: () => {

            },
          ),
          ListTile(
            title: Text('Logout'),
            onTap: () => {

            },
          )
        ],
      ),
    );
  }
}


