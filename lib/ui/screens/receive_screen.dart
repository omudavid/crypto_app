import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReceiveScreen extends StatelessWidget {
  const ReceiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receive Crypto'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Card(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text('Scan the QR code to get Receive address'),
                    Image.asset('assets/images/qr.png'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Expanded(child: Divider()),
                        Text('  or  '),
                        Expanded(child: Divider()),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Your Bitcoin Address',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey, width: 0.3),
                      ),
                      child: FittedBox(
                        child: Text('34HuwzDnSwxVRNCoyFCpQnRBXV2sVVmGUY'),
                      ),
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                color: Theme.of(context).primaryColor)),
                        onPressed: () {},
                        child: Text('Copy Address'))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '* Block/Time will be calculated after the transaction \nis generated and broadcasted',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            ConstrainedBox(
                constraints:
                    BoxConstraints.tightFor(width: double.infinity, height: 50),
                child: ElevatedButton(
                    onPressed: () {}, child: Text('SHARE ADDRESS')))
          ],
        ),
      ),
    );
  }
}
