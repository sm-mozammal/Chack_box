import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utiles/chack_util.dart';
import '../widgets/cart_widget.dart';

class MedicineCart extends StatefulWidget {
  static const String routeName = '/';

  const MedicineCart({Key? key}) : super(key: key);

  @override
  State<MedicineCart> createState() => _MedicineCartState();
}

class _MedicineCartState extends State<MedicineCart> {

  bool isCheck = false;
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
      body: Center(
        child: Container(
          child: ListView(
              children: [
                // Card(
                //   child: Padding(
                //     padding: const EdgeInsets.all(10.0),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         ...checkBoxList.map((item) => ListTile(
                //           leading:
                //               Expanded(
                //                   flex: 4,
                //                   child: Text(item.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                //               ),
                //           title: Checkbox(
                //             value: item.value,
                //             onChanged: (value) => onClicked(item),
                //           ),
                //         )).toList(),
                //       ],
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Text('GLUCOSE, FASTING (F)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Text('150',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                      SizedBox(height: 5,),
                                      Text('200',style: TextStyle(fontSize: 13,decoration: TextDecoration.lineThrough),),
                                    ],
                                  )
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Checkbox(
                                    checkColor: Colors.blueGrey,
                                    value: isCheck,
                                    onChanged:(bool ? value) {
                                      setState(() {
                                        isCheck = value!;
                                      });
                                    },
                                  )
                              ),

                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Text('GLUCOSE, POST PRANDIAL (PP), 2 HOURS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Text('150',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                      SizedBox(height: 5,),
                                      Text('200',style: TextStyle(fontSize: 13,decoration: TextDecoration.lineThrough),),
                                    ],
                                  )
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Checkbox(
                                    checkColor: Colors.blueGrey,
                                    value: isCheck,
                                    onChanged:(bool ? value) {
                                      setState(() {
                                        isCheck = value!;
                                      });
                                    },
                                  )
                              ),

                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Text('GLUCOSE, RENDOM (R)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Text('146',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                      SizedBox(height: 5,),
                                      Text('200',style: TextStyle(fontSize: 13,decoration: TextDecoration.lineThrough),),
                                    ],
                                  )
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Checkbox(
                                    checkColor: Colors.blueGrey,
                                    value: isCheck,
                                    onChanged:(bool ? value) {
                                      setState(() {
                                        isCheck = value!;
                                      });
                                    },
                                  )
                              ),

                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Text('GLUCOSE, (1.5 H AFTER 75 G)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Text('146',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                      SizedBox(height: 5,),
                                      Text('200',style: TextStyle(fontSize: 13,decoration: TextDecoration.lineThrough),),
                                    ],
                                  )
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Checkbox(
                                    checkColor: Colors.blueGrey,
                                    value: isCheck,
                                    onChanged:(bool ? value) {
                                      setState(() {
                                        isCheck = value!;
                                      });
                                    },
                                  )
                              ),

                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Text('GLUCOSE, (2.4 H AFTER 75 G)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Text('144',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                      SizedBox(height: 5,),
                                      Text('200',style: TextStyle(fontSize: 13,decoration: TextDecoration.lineThrough),),
                                    ],
                                  )
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Checkbox(
                                    checkColor: Colors.blueGrey,
                                    value: isCheck,
                                    onChanged:(bool ? value) {
                                      setState(() {
                                        isCheck = value!;
                                      });
                                    },
                                  )
                              ),

                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Text('GLUCOSE, (1.5 H AFTER 100 G)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Text('144',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                      SizedBox(height: 5,),
                                      Text('200',style: TextStyle(fontSize: 13,decoration: TextDecoration.lineThrough),),
                                    ],
                                  )
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Checkbox(
                                    checkColor: Colors.blueGrey,
                                    value: isCheck,
                                    onChanged:(bool ? value) {
                                      setState(() {
                                        isCheck = value!;
                                      });
                                    },
                                  )
                              ),

                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Text('GLUCOSE, (2.4 H AFTER 100 G)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Text('146',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                      SizedBox(height: 5,),
                                      Text('200',style: TextStyle(fontSize: 13,decoration: TextDecoration.lineThrough),),
                                    ],
                                  )
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Checkbox(
                                    checkColor: Colors.blueGrey,
                                    value: isCheck,
                                    onChanged:(bool ? value) {
                                      setState(() {
                                        isCheck = value!;
                                      });
                                    },
                                  )
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('টি সিলেক্ট করা হয়েছে'),
                        Text('0 ৳',style: TextStyle(color: Colors.red),)
                      ],
                    ),
                    title: ElevatedButton(
                      onPressed: () {},
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
                )
              ],
            ),
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
