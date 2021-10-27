class Todo {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Todo({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory Todo.fromJson(Map<String, Object?> jsonMap) {
    return Todo(
        albumId: jsonMap["albumId"] as int,
        id: jsonMap["id"] as int,
        title: jsonMap["title"] as String,
        url: jsonMap["url"] as String,
        thumbnailUrl: jsonMap["thumbnailUrl"] as String);
  }
}
