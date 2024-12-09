import 'package:intl/intl.dart';

class Comment {
  String text;
  String cleanedText;
  DateTime publishedAt;
  String category;
  String link;

  Comment({
    required this.text,
    required this.cleanedText,
    required this.publishedAt,
    required this.category,
    required this.link,
  });

  // JSON'dan model objesine dönüşüm
  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      text: json['text'] ?? '',
      cleanedText: json['cleaned_text'] ?? '',
      publishedAt: DateTime.parse(json['published_at']),
      category: json['category'] ?? '',
      link: json['link'] ?? '',
    );
  }

  // Model objesinden JSON'a dönüşüm
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'cleaned_text': cleanedText,
      'published_at': DateFormat('dd.MM.yyyy HH:mm:ss').format(publishedAt),
      'category': category,
      'link': link,
    };
  }
}
