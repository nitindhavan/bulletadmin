class TestModel{
  String name;
  String id;
  String examId;

  TestModel(this.name, this.id,this.examId);

  TestModel.fromMap(Map<dynamic, dynamic> map)
      : name = map['name'],
        id = map['id'],
        examId=map['examId'];

  Map<String, Object?> toMap() {
    final map = {
      'name': name,
      'id': id,
      'examId': examId
    };
    map.removeWhere((key, value) => value==null);
    return map;
  }
}