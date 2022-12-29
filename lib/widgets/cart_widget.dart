import 'package:chack_box/pages/apointment_page.dart';
import 'package:chack_box/utiles/chack_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/chack_box.dart';

class ChechboxItem extends StatefulWidget {
  static const String routeName = '/';

  const ChechboxItem({Key? key}) : super(key: key);

  @override
  State<ChechboxItem> createState() => _ChechboxItemState();
}

class _ChechboxItemState extends State<ChechboxItem> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.keyboard_backspace_sharp),
        title: Text(
          'ডায়াগনস্টিকি পরিষেবাদি',
          style: TextStyle(fontSize: 15),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body:  SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            Container(
              height: 600,
              child: ListView.builder(
                padding: EdgeInsets.all(16.0),
                  itemCount: checkBoxList.length,
                  itemBuilder: (context, index){
                    final cbl = checkBoxList[index];
                    return Padding(
                        padding: const EdgeInsets.all(0.0),
                        child:
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: Text(cbl.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: [
                                        Text(cbl.salePrice,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                        SizedBox(height: 5,),
                                        Text(cbl.realPrice,style: TextStyle(fontSize: 13,decoration: TextDecoration.lineThrough),),
                                      ],
                                    )
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Checkbox(
                                      checkColor: Colors.blueGrey,
                                      value: cbl.value,
                                      onChanged:(bool ? value) {
                                        setState(() {
                                          cbl.value = value!;
                                        });
                                      },
                                    )
                                ),

                              ],
                            ),
                          ),
                        ),
                        // ListTile(
                        //       leading: Text(cbl.title,),
                        //       title: Text(cbl.salePrice,),
                        //       subtitle: Text(cbl.realPrice,),
                        //       trailing: Checkbox(
                        //         checkColor: Colors.blueGrey,
                        //         value: cbl.value,
                        //         onChanged:(bool ? value) {
                        //           setState(() {
                        //             cbl.value = value!;
                        //           });
                        //         },
                        //       ),
                        //     )
                      );
                  },
                ),
            ),
            Container(
              height: 100,
              child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('টি সিলেক্ট করা হয়েছে'),
                        Text('0 ৳',style: TextStyle(color: Colors.red),)
                      ],
                    ),
                    title: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, ApointmentPage.routeName),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),

                              )
                          )
                      ),
                      child: Text('পরবর্তি'),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  onClicked(CheckBoxModel ckbItem) {
    setState(() {
      ckbItem.value = ckbItem.value;
    });
  }
}
