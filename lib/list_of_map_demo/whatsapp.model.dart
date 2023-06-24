class Whatsapp {
  String? image, name, time, messege;
  Whatsapp({this.image, this.name, this.time, this.messege});
  factory Whatsapp.fromJson(Map<String, dynamic> json) => Whatsapp(
        image: json['image'],
        name: json['name'],
        messege: json['messege'],
        time: json['time'],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (image != null) {
      data['image'] = image;
    }
    if (name != null) {
      data['name'] = name;
    }
    if (time != null) {
      data['time'] = time;
    }
    if (messege != null) {
      data['messege'] = messege;
    }
    return data;
  }
}
