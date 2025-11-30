import 'package:core/core.dart';

/// A list of predefined comments for fixture data.
///
/// This function can be configured to generate comments in either English or
/// Arabic. It creates 10 comments for each of the first 10 users, with each
/// comment targeting a unique headline.
List<Comment> getHeadlineCommentsFixturesData({
  String languageCode = 'en',
  DateTime? now,
}) {
  final comments = <Comment>[];
  final users = usersFixturesData.take(10).toList();

  // Ensure only approved languages are used, default to 'en'.
  final resolvedLanguageCode = ['en', 'ar'].contains(languageCode)
      ? languageCode
      : 'en';
  final language = languagesFixturesData.firstWhere(
    (lang) => lang.code == resolvedLanguageCode,
    orElse: () => languagesFixturesData.firstWhere((lang) => lang.code == 'en'),
  );

  final commentContentsByLang = <String, List<String>>{
    'en': [
      'This is a really insightful article. It completely changed my perspective.',
      "I'm not sure I agree with the author's conclusion, but it's a well-argued piece.",
      'Finally, someone is talking about this! More people need to read this.',
      'A bit simplistic, but a good introduction to the topic for beginners.',
      'The data presented here is fascinating. I wonder what the long-term implications are.',
      'This is exactly what I was looking for. Thank you for sharing!',
      'I have a few questions about the methodology used in this study.',
      'This made me laugh out loud. Great writing!',
      "A powerful and moving story. It's important to hear these voices.",
      'I think there are some key facts missing from this analysis.',
    ],
    'ar': [
      'هذا مقال ثاقب حقًا. لقد غير وجهة نظري تمامًا.',
      'لست متأكدًا من أنني أتفق مع استنتاج المؤلف، لكنها قطعة جيدة الحجة.',
      'أخيرًا، هناك من يتحدث عن هذا! المزيد من الناس بحاجة إلى قراءة هذا.',
      'مبسط بعض الشيء، لكنه مقدمة جيدة للمبتدئين.',
      'البيانات المقدمة هنا رائعة. أتساءل ما هي الآثار طويلة المدى.',
      'هذا هو بالضبط ما كنت أبحث عنه. شكرًا لك على المشاركة!',
      'لدي بعض الأسئلة حول المنهجية المستخدمة في هذه الدراسة.',
      'هذا جعلني أضحك بصوت عال. كتابة رائعة!',
      'قصة قوية ومؤثرة. من المهم سماع هذه الأصوات.',
      'أعتقد أن هناك بعض الحقائق الأساسية المفقودة من هذا التحليل.',
    ],
  };

  final commentContents = commentContentsByLang[resolvedLanguageCode]!;

  for (var i = 0; i < users.length; i++) {
    for (var j = 0; j < 10; j++) {
      final commentIndex = i * 10 + j;

      // Vary the status for realism
      var status = CommentStatus.approved;
      if (commentIndex % 15 == 0) {
        status = CommentStatus.pendingReview;
      } else if (commentIndex % 25 == 0) {
        status = CommentStatus.rejected;
      }

      comments.add(
        Comment(
          language: language,
          content: commentContents[j],
          status: status,
        ),
      );
    }
  }

  return comments;
}
