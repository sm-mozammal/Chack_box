import 'package:chack_box/pages/apointment_page.dart';
import 'package:chack_box/pages/chack_box.dart';
import 'package:chack_box/pages/invoice_page.dart';
import 'package:chack_box/widgets/cart_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: ChechboxItem.routeName,
      routes: {
        MedicineCart.routeName: (context) => MedicineCart(),
        ChechboxItem.routeName: (context) => ChechboxItem(),
        ApointmentPage.routeName: (context) => ApointmentPage(),
        InvoicePage.routeName: (context) => InvoicePage(),
      },
    );
  }
}

