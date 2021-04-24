

class ExModel {
  ExModel({this.id, this.title, this.body});

  factory ExModel.fromJson(Map<String, dynamic> json) =>
      ExModel(id: json['id'], title: json['title'], body: json['body']);

  final String? id;
  final String? title;
  final String? body;

  Map<String, dynamic> toJson() => {
    'id': this.id,
    'name': this.title,
    'body': this.body,
  };
}
