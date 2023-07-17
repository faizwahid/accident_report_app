

class AccidentReport{
  int? id;
  String? name;
  String? contact;
  String? location;
  String? date;
  String? time;
  String? description;

  accidentMap() {
    var mapping  = Map <String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['name'] = name!;
    mapping['contact'] = contact!;
    mapping['location'] = location!;
    mapping['date'] = date!;
    mapping['time'] = time!;
    mapping['description'] = description!;
    return mapping;
  }
}