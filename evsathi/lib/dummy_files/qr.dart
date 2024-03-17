import 'package:evsathi/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
  var qrCodeResult = '';

Future<String> scanQRCode() async {
  try {
    final qrCode = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666', 
      'Cancel', 
      true, 
      ScanMode.QR,
    );

    if (qrCode == '-1') {
      qrCodeResult = 'Failed to scan QR Code.';
    } else {
      qrCodeResult = qrCode;
      qrCodeResult = qrCodeResult.substring(9, qrCodeResult.length);
    }
  } on PlatformException {
    qrCodeResult = 'Failed to scan QR Code.';
  }
  return qrCodeResult == 'Failed to scan QR Code.' ? "Payment failed" : "Proceed payment to "+qrCodeResult+"?";
}

class QR extends StatelessWidget {
  const QR({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder<String>(
              future: scanQRCode(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else {
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return Text(snapshot.data ?? 'No QR code scanned yet');
                  }
                }
              },
            ),
            SizedBox(height: 20,),
           ElevatedButton(
  onPressed: () {
    if (qrCodeResult == 'Failed to scan QR Code.') Navigator.pop(context);
     else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Thank you for using our services!"))
      );
      Navigator.pop(context);
      //HomeEv();
    }
  },
  child: const Text("PROCEED"),
),

          ],
        ),  
      ),
    );
  }
}
