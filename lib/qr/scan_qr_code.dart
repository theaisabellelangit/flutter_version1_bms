import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_version1_bms/widgets/button_widget.dart';


class ScanQRCode extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQRCode> {
  String qrCode = 'Unknown';

  @override
  Widget build(BuildContext context) => Scaffold (
    appBar: AppBar(
      title: Text('Generate and Scan'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Scan Result',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white54,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '$qrCode',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 72),
          ButtonWidget(
            text: 'Start Scan',
            onClicked: () => ScanQRCode(),
            k: null,
          ),
        ],
      ),
    )
  );
  
  Future <void> scanQRCode() async {
    try{
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.QR,
      );
      
      if (!mounted) return;
      
      setState(() {
        this.qrCode = qrCode;
      });
    } on PlatformException {
      qrCode = 'Failed to get platform version';
    }
  }
}