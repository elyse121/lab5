class Post {
  int? id;
  String title;
  String body;

  Post({this.id, required this.title, required this.body});

  // Convert a Post into a Map
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{'title': title, 'body': body};
    if (id != null) map['id'] = id;
    return map;
  }

  // Extract a Post object from a Map
  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(id: map['id'], title: map['title'], body: map['body']);
  }
}
