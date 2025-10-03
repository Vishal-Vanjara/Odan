class Note {
  final int? id;   // nullable because it's auto-incremented
  final String title;
  final String content;

  Note({
    this.id,
    required this.title,
    required this.content,
  });

  // Convert Note → Map (for DB insert/update)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
    };
  }

  // Convert Map → Note (for fetching from DB)
  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      id: map['id'],
      title: map['title'],
      content: map['content'],
    );
  }
}
