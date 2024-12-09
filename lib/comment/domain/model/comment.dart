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
    String dateString = json['published_at'] ?? '';
    DateTime publishedAt;
    try {
      publishedAt = DateTime.tryParse(dateString) ?? _parseCustomDate(dateString);
    } catch (e) {
      publishedAt = DateTime.now(); // Hata durumunda mevcut zamanı kullan
      print('Error parsing date: $e');
    }

    return Comment(
      text: json['text'] ?? '',
      cleanedText: json['cleaned_text'] ?? '',
      publishedAt: publishedAt,
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

  // Özel tarih formatını çözümleme
  static DateTime _parseCustomDate(String dateString) {
    // Eğer gelen tarih formatı farklıysa (örneğin: "dd.MM.yyyy HH:mm:ss")
    try {
      return DateFormat('dd.MM.yyyy HH:mm:ss').parse(dateString);
    } catch (e) {
      // Eğer parse edilemezse, hata logu ve geçerli bir tarih döndür.
      print('Error in parsing custom date format: $e');
      return DateTime.now(); // Varsayılan olarak mevcut zaman
    }
  }
}
