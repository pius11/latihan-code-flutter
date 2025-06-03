class Kontak {
  int? id;
  String? name;
  String? mobileNo;
  String? email;
  String? company;

  Kontak({
    this.id,
    required this.name,
    required this.mobileNo,
    required this.email,
    required this.company,
  });

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    if (id != null) {
      map['id'] = id;
    }
    map['name'] = name;
    map['mobileNo'] = mobileNo;
    map['company'] = company;
    return map;
  }

  Kontak.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.name = map['name'];
    this.email = map['email'];
    this.mobileNo = map['mobileNo'];
    this.company = map['company'];
  }
}
