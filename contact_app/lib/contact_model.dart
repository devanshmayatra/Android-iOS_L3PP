class ContactModel {
  final String name;
  final double number;
  final String email;

  const ContactModel({
    required this.name,
    required this.number,
    required this.email,
  });

  factory ContactModel.fromMap(Map<String, dynamic> map) {
    return ContactModel(
      name: map['name'] as String,
      number: map['number'] as double,
      email: map['email'] as String,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is ContactModel && other.name == name;
  }
}
