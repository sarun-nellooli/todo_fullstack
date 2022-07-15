import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromMap(x)));

class Post {
  Post({
    required this.id,
    required this.title,
    required this.description,
  });

  int id;
  String title;
  String description;

  factory Post.fromMap(Map<String, dynamic> json) => Post(
        id: json["id"],
        title: json["title"],
        description: json["description"],
      );
}
