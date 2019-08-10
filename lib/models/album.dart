import 'package:flutter/foundation.dart';

class Album {
  final String cover;
  final String title;
  final String subtitle;
  final String avatar;
  final String author;
  final String comments;
  final bool isHot;

  Album(
      {@required this.cover,
      @required this.title,
      @required this.subtitle,
      @required this.avatar,
      @required this.author,
      @required this.comments,
      @required this.isHot});
}

List<Album> albums = <Album>[
  Album(
      author: 'donatelle',
      avatar: 'assets/images/PIC KALI.jpg',
      comments:'22' ,
      cover: 'assets/images/donatelle.jpg',
      isHot: false,
      subtitle: 'versace',
      title: 'donatelle'),
      Album(
      author: 'Dybala',
      avatar: 'assets/images/dybala.jpg',
      comments:'22' ,
      cover: 'assets/images/dybala.jpg',
      isHot: true,
      subtitle: 'Dybala To United',
      title: 'Dybala'),
      Album(
      author: 'Dybala',
      avatar: 'assets/images/dybala.jpg',
      comments:'50' ,
      cover: 'assets/images/dybala.jpg',
      isHot: true,
      subtitle: 'Dybala To United',
      title: 'Dybala')
];
