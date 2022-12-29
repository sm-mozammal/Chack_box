class ApointmentModel {
  String date;
  String time;
  String name;
  String address;
  String contactNumber;
  String email;
  String imagePath;
  String note;

  ApointmentModel({required this.date,
    required this.time,
    required this.name,
    required this.address,
    required this.contactNumber,
    required this.email,
    required this.imagePath,
    required this.note});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'time': time,
      'name': name,
      'address': address,
      'contactNumber': contactNumber,
      'email': email,
      'imagePath': imagePath,
      'note': note,
    };
  }

  factory ApointmentModel.fromMap(Map<String, dynamic>map) =>
      ApointmentModel(
          date: map['date'],
          time: map['time'],
          name: map['name'],
          address: map['address'],
          contactNumber: map['contactNumber'],
          email: map['email'],
          imagePath: map['imagePath'],
          note: map['note']
      );
}

final  weekList = <String> [
  'SAT',
  'SUN',
  'MON',
  'TUH',
  'WED',
  'THU',
  'FRI',
];

final dateList = <String>[
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
];
