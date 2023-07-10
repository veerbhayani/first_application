class User {
  String? firstName, emailId;
  int? age;
  User({this.firstName, this.age, this.emailId});
  factory User.fromJson(Map<String, dynamic> json) => User(
        firstName: json['firstName'],
        emailId: json['emailId'],
        age: json['age'],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (firstName != null) {
      data['firstName'] = firstName;
    }
    if (emailId != null) {
      data['emailId'] = emailId;
    }
    if (age != null) {
      data['age'] = age;
    }
    return data;
  }
}
