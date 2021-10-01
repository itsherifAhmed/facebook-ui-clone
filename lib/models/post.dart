class Post{
  final String profileImageUrl;
  final String username;
  final String time;
  final String content;
  final String likes;
  final String comments;
  final String shares;

  Post({
    this.profileImageUrl,
    this.username,
    this.time,
    this.content,
    this.likes,
    this.comments,
    this.shares
  });
}

List<Post> posts = [
  new Post(profileImageUrl: 'assets/sheriffr.png', username: 'Ahmed Sherif', time: '3w', content: 'فكر كتير ف السهل واشتغل كتير في الصعب', likes: '77K', comments: '5K', shares: '3K'),
  new Post(profileImageUrl: 'assets/gid.png', username: '3bmeged', time: '5m ago', content: 'We are looking for an experienced Flutter Developer who will join our talented software team that works on mission-critical applications. Your duties will include managing Flutter (Android, iOS) application development while providing expertise in the full software development lifecycle, from concept and design to testing.', likes: '63', comments: '11', shares: '2'),
  new Post(profileImageUrl: 'assets/magedmo.png', username: 'Maed Mo', time: '13ma go', content: 'We are looking for a Dart/Flutter Developer responsible for creating multi-platform apps for iOS and Android using Google’s Flutter development framework. The primary focus will be on creating new experiences and maintaining existing apps. Deep experience contributing to and managing high-scale production mobile apps. You must have previous experience in Flutter and Dart development.', likes: '52', comments: '1', shares: '6'),
  new Post(profileImageUrl: 'assets/abyu.png', username: 'Abyusif', time: '2d', content: 'Everyone waited for Moussa’s comeback, but for months the rapper did not deliver. To be frank, he had a number of projects including his latest hit album ‘Florida’, which was released last January and when all seemed to be forgotten, yesterday the rising star dropped his surprise diss track “Msh Okay”, or ‘not okay’ in English; in three minutes, Moussa went for the jugular, coming after Abyu and everyone in his circle from Lil’ Baba to Abu Al Anwar exposing private conversations and accusing Abyusif of inciting the beef with him for clout.', likes: '61', comments: '3', shares: '2'),
  new Post(profileImageUrl: 'assets/eljoker.png', username: 'El-Joker(Ahmed Nasser)', time: '1w', content: 'دايما تخطفيني للحظه هاديه  وسط الزحمه , مقولتش الوحيده بس خطفتك احلي', likes: '233', comments: '6', shares: '4'),

];