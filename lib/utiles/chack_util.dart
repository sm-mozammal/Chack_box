class CheckBoxModel {
  String title;
  String salePrice;
  String realPrice;
  bool? value;

  CheckBoxModel({required this.title, required this.salePrice,required this.realPrice,required this.value,});

}

// final List<CheckBoxModel> checkBoxList =[
//   CheckBoxModel(title: 'GLUCOSE, FASTING (F)',salePrice: '150',realPrice: '200', value: false),
//   CheckBoxModel(title: 'GLUCOSE, FASTING (F)',salePrice: '150',realPrice: '200', value: false),
//   CheckBoxModel(title: 'GLUCOSE, FASTING (F)',salePrice: '150',realPrice: '200', value: false),
//   CheckBoxModel(title: 'GLUCOSE, FASTING (F)',salePrice: '150',realPrice: '200', value: false),
//   CheckBoxModel(title: 'GLUCOSE, FASTING (F)',salePrice: '150',realPrice: '200', value: false),
//   CheckBoxModel(title: 'GLUCOSE, FASTING (F)',salePrice: '150',realPrice: '200', value: false),
//   CheckBoxModel(title: 'GLUCOSE, FASTING (F)',salePrice: '150',realPrice: '200', value: false),
// ];

final List<CheckBoxModel> checkBoxList =[
  CheckBoxModel(title: 'GLUCOSE, FASTING (F)',salePrice: '150',realPrice: '200', value: false),
  CheckBoxModel(title: 'GLUCOSE, POST PRANDIAL (PP), 2 HOURS',salePrice: '150',realPrice: '200', value: false),
  CheckBoxModel(title: 'GLUCOSE, RENDOM (R)',salePrice: '146',realPrice: '200', value: false),
  CheckBoxModel(title: 'GLUCOSE, (1.5 H AFTER 75 G',salePrice: '146',realPrice: '200', value: false),
  CheckBoxModel(title: 'GLUCOSE, (2.4 H AFTER 75 G',salePrice: '144',realPrice: '200', value: false),
  CheckBoxModel(title: 'GLUCOSE, (1.5 H AFTER 100 G',salePrice: '144',realPrice: '200', value: false),
  CheckBoxModel(title: 'GLUCOSE, (2.4 H AFTER 100 G',salePrice: '146',realPrice: '200', value: false),
];
