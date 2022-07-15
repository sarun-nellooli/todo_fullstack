import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:todo/models/todo.dart';

Future<List<Post>> fetchPost() async {
  final response = await http.get(Uri.parse('http://127.0.0.1:8000/apis/v1/'));

  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

    return parsed.map<Post>((json) => Post.fromMap(json)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}