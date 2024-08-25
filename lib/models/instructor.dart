class Instructor {
  String? id;
  String? name;
  String? graduationFrom;
  int? yearsOfExperience;

  Instructor.fromJson(Map<String, dynamic> data) {
    id = data['id'];
    name = data['name'];
    graduationFrom = data['graduation_from'];
    yearsOfExperience = data['years_of_experience'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['graduation_from'] = graduationFrom;
    data['years_of_experience'] = yearsOfExperience;
    return data;
  }
}
