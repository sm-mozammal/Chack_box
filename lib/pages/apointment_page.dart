import 'package:chack_box/model/apointment_model.dart';
import 'package:chack_box/pages/invoice_page.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApointmentPage extends StatefulWidget {
  static const String routeName = '/apointment';

  const ApointmentPage({Key? key}) : super(key: key);

  @override
  State<ApointmentPage> createState() => _ApointmentPageState();
}

class _ApointmentPageState extends State<ApointmentPage> {
  final dateController = TextEditingController();
  final timeController = TextEditingController();
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final contactNumberController = TextEditingController();
  final emailController = TextEditingController();
  final noteController = TextEditingController();

  final formkey = GlobalKey<FormState>();


  @override
  void dispose() {
    dateController.dispose();
    timeController.dispose();
    nameController.dispose();
    addressController.dispose();
    contactNumberController.dispose();
    emailController.dispose();
    noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(
            'ডায়াগনস্টিকি পরিষেবাদি',
            style: TextStyle(fontSize: 15),
          ),
        ),
        body: Form(
          key: formkey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              ListTile(
                leading: Text(
                  'Select Date',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                trailing: Text('December 2022',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ),
              Container(
                color: Colors.white,
                height: 100,
                child: ListView.builder(
                    padding: EdgeInsets.all(8),
                    scrollDirection: Axis.horizontal,
                    itemCount: dateList.length,
                    itemBuilder: (BuildContext context, index) {
                      final dl = dateList[index];
                      final wl = weekList[index];
                      return Card(
                        color: Colors.grey.shade100,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                wl,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                dl,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                // ListView(
                //   padding: EdgeInsets.all(8),
                //   scrollDirection: Axis.horizontal,
                //   children: [
                //     Card(
                //       color: Colors.grey.shade100,
                //       child: Padding(
                //         padding: const EdgeInsets.only(left: 20, right: 20),
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             Text('WED',style: TextStyle(fontWeight: FontWeight.bold),),
                //             Text('14',style: TextStyle(fontWeight: FontWeight.bold),)
                //           ],
                //         ),
                //       ),
                //
                //     )
                //   ],
                // ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                'Select Time',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: timeController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: '00.00.00',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Mr Sunto',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                'Address',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: addressController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: '-',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                'Contact Number',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: contactNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: '8801727300421',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter Email (Optional)',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              DottedBorder(
                strokeWidth: 2,
                color: Colors.grey.shade300,
                  dashPattern: [20,4],
                  child: Container(
                    color: Colors.white,
                    height: 200,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('প্রেসক্রিপশন আপলোড করুন',style: TextStyle(fontSize: 18,),),
                        SizedBox(height: 5,),
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.grey.shade300,
                          child: Icon(Icons.cloud_upload_outlined,size: 50,),
                        ),
                        SizedBox(height: 5,),
                        Text('File Name: ggds4343',style: TextStyle(fontSize: 18,)),
                        SizedBox(height: 5),
                        Text('File Size: Max 2 mb',style: TextStyle(fontSize: 15,))
                      ],
                    ),
                  )
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                'Note',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                maxLines: 5,
                controller: noteController,
                decoration: InputDecoration(
                  hintText: 'Enter Note Here',
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, InvoicePage.routeName),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Next'),
                  ))
            ],
          ),
        ));
  }
}
