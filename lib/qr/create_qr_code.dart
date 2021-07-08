import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateQRCode extends StatefulWidget {
  @override
  _CreateQRCodeState createState() => _CreateQRCodeState();

}

class _CreateQRCodeState extends State<CreateQRCode> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Generate and Scan')
    ),
    body: Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BarcodeWidget(
              barcode: Barcode.qrCode(),
              color: Colors.white,
              data: controller.text,
              width: 200,
              height: 200,
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Expanded(child: buildTextField(context)),
                const SizedBox(width:  12),
                FloatingActionButton(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(Icons.done, size: 30),
                  onPressed: () => setState(() {}),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );

  Widget buildTextField(BuildContext context) => TextField(
    controller: controller,
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    decoration: InputDecoration(
      hintText: 'Enter details',
      hintStyle: TextStyle(color: Colors.blueGrey),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: Theme.of(context).primaryColor,
        ),
      ),
    ),
  );
}