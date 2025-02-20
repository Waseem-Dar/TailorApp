class NewClientModel {
  final String name;
  final String phone;
  final String address;
  final String gender; // Can be "Male" or "Female"
  final String image;

  NewClientModel({
    required this.name,
    required this.phone,
    required this.address,
    required this.gender,
    required this.image,
  });


  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phone': phone,
      'address': address,
      'gender': gender,
      'image': image,
    };
  }

  factory NewClientModel.fromMap(Map<String, dynamic> map) {
    return NewClientModel(
      name: map['name'],
      phone: map['phone'],
      address: map['address'],
      gender: map['gender'],
      image: map['image'],
    );
  }


}
