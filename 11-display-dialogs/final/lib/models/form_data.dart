class FormData {
  String? title;
  String? content;
  String? imageUrl;
  String? email;
  bool? isBreaking;
  int? category;

  FormData({
    this.title,
    this.content,
    this.imageUrl,
    this.email,
    this.isBreaking = false,
    this.category,
  });

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['title'] = title;
    data['content'] = content;
    data['imageUrl'] = imageUrl;
    data['email'] = email;
    data['isBreaking'] = isBreaking;
    data['category'] = category;
    return data;
  }
}
