class Student {
  String? rm;
  String? name;
  int? age;

  Student({this.rm, this.name, this.age});

  Student.fromJson(Map<String, dynamic> json) {
    rm = json['rm'];
    name = json['name'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rm'] = rm;
    data['name'] = name;
    data['age'] = age;
    return data;
  }

  @override
  String toString() {
    return 'Student{rm: $rm, name: $name, age: $age}';
  }
}