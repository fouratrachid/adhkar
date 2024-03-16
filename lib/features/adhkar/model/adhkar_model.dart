class Adhkar {
  String? category;
  String? count;
  String? description;
  String? reference;
  String? content;
  String? id;
  int? estimatedReadingTime;

  Adhkar(
      {this.category,
      this.count,
      this.description,
      this.reference,
      this.content,
      this.id,
      this.estimatedReadingTime});

  Adhkar.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    count = json['count'];
    description = json['description'];
    reference = json['reference'];
    content = json['content'];
    id = json['id'];
    estimatedReadingTime = json['estimatedReadingTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['category'] = category;
    data['count'] = count;
    data['description'] = description;
    data['reference'] = reference;
    data['content'] = content;
    data['id'] = id;
    data['estimatedReadingTime'] = estimatedReadingTime;
    return data;
  }
}
