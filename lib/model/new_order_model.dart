class NewOrderModel {
  final String name;
  final String phone;
  final String address;
  final int clothUniqueNumber;
  final String design;
  final String clothImage;
  final String clientImage;
  final String orderDate;
  final String deliveryDate;
  final bool isUrgent;
  final String specialInstruction;
  final double totalAmount;
  final double advanceAmount;
  final double dueAmount;
  final List<double> measurement;

  NewOrderModel({
    required this.name,
    required this.phone,
    required this.address,
    required this.clothUniqueNumber,
    required this.design,
    required this.clothImage,
    required this.clientImage,
    required this.orderDate,
    required this.deliveryDate,
    required this.isUrgent,
    required this.specialInstruction,
    required this.totalAmount,
    required this.advanceAmount,
    required this.dueAmount,
    required this.measurement,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phone': phone,
      'address': address,
      'clothUniqueNumber': clothUniqueNumber,
      'design': design,
      'clothImage': clothImage,
      'clientImage': clientImage,
      'orderDate': orderDate,
      'deliveryDate': deliveryDate,
      'isUrgent': isUrgent,
      'specialInstruction': specialInstruction,
      'totalAmount': totalAmount,
      'advanceAmount': advanceAmount,
      'dueAmount': dueAmount,
      'measurement': measurement,
    };
  }

  factory NewOrderModel.fromJson(Map<String, dynamic> json) {
    return NewOrderModel(
      name: json['name'],
      phone: json['phone'],
      address: json['address'],
      clothUniqueNumber: json['clothUniqueNumber'],
      design: json['design'],
      clothImage: json['clothImage'],
      clientImage: json['clientImage'],
      orderDate: json['orderDate'],
      deliveryDate: json['deliveryDate'],
      isUrgent: json['isUrgent'],
      specialInstruction: json['specialInstruction'],
      totalAmount: json['totalAmount'],
      advanceAmount: json['advanceAmount'],
      dueAmount: json['dueAmount'],
      measurement: List<double>.from(json['measurement']),
    );
  }

}

enum Design {
  Kurta,
  ShalwarKameez,
  Blouse,
  Burka,
  Saree,
  Skirt,
  NightGown,
  Frock,
  Shorts,
  Jeans,
  Shirt,
  Pant,
  Coat,
  Pajama
}
