import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InvoicePage extends StatefulWidget {
  static const String routeName = '/invoice';

  const InvoicePage({Key? key}) : super(key: key);

  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  final promoController = TextEditingController();

  @override
  void dispose() {
    promoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.keyboard_backspace_sharp),
        title: Text(
          'ইনভয়েস',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                height: 600,
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: TextField(
                            controller: promoController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'প্রোমো কোড',
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade300)),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'প্রবেশ করুন',
                                  ),
                                )))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sebaghar',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text('Online Video Consultation Chamber'),
                    Text('B-25, Mannan Plaza, 4th Floor'),
                    Text('Khilkhet, Dhaka-1229'),
                    Text('Bangladesh'),
                    Text('Mobile: 8801951900200'),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 115.0, left: 115),
                          child: Text(
                            'Invoice',
                          ),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'রোগীর নাম : sunto',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'সেবা',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        DottedLine(
                          dashColor: Colors.grey,
                          dashGapLength: 5,
                        ),
                        ListTile(
                          dense: true,
                          leading: Text('GLUCOSE(1.5 H AFTER 100 G)'),
                          trailing: Text('144.00'),
                        ),
                        ListTile(
                          dense: true,
                          leading: Text('GLUCOSE(2.4 H AFTER 75 G)'),
                          trailing: Text('144.00'),
                        ),
                        DottedLine(
                          dashColor: Colors.grey,
                          dashGapLength: 5,
                        ),
                        ListTile(
                          dense: true,
                          leading: Text('Total Cost',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold)),
                          trailing: Text('288.00'),
                        ),
                        ListTile(
                          dense: true,
                          leading: Text('VAT ( 0% )'),
                          trailing: Text('00.00'),
                        ),
                        DottedLine(
                          dashColor: Colors.grey,
                          dashGapLength: 5,
                        ),
                        ListTile(
                          dense: true,
                          leading: Text('Grand Total',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,)),
                          trailing: Text(
                            '288.00 TK',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 110.0, left: 110),
                  child: Text('কনফার্ম করুন'),
                ))
          ],
        ),
      ),
    );
  }
}
