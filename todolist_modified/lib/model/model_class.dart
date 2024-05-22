class TodoModel {
  int? id;
  String? title;
  String? description;
  String? date;
  int isCompleted;

  TodoModel({
    this.id,
    required this.title,
    required this.description,
    required this.date,
    this.isCompleted = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "description": description,
      "date": date,
      "isCompleted": isCompleted,
    };
  }
}
