import 'package:book_store/class/author_class.dart';
import 'package:book_store/class/book.dart';
import 'package:flutter/material.dart';

List<MainBook> books = [
  MainBook(
      "Harry Potter The Cursed Child",
      "assets/book1.jpg",
      "novel",
      "Welcome to the enchanting world of the Mayfair Witches books, a spellbinding series created by the literary genius Anne Rice. In this article, we will unravel the mysteries behind the Mayfair Witches books, exploring their origin, characters, cultural impact, and much more. Now grab your broomstick and join me as we embark on a fantastical adventure through the fascinating universe that Anne Rice has created.",
      "assets/pdf/book1.pdf",
      "Jk Rowling",
      5),
  MainBook(
      "Mind Management not Time Management",
      "assets/book2.jpg",
      "Self Improvement",
      "In today’s fast-paced world, the pursuit of success often feels like a race against time. We’re constantly bombarded with advice on how to manage our time more effectively to achieve our goals. However, what if the secret to true productivity and success lies not in time management, but in something even more powerful—mind management? In this article, we delve into the concept of mind management, explore its benefits, and understand why it trumps traditional time management. Let’s embark on this journey of self-discovery and transformation.",
      "assets/pdf/book2.pdf",
      "Steven Jk",
      3),
  MainBook(
      "The Dark Art",
      "assets/book3.jpg",
      "Thrillers",
      "In the dimly lit corridors of human history, a mysterious and often misunderstood realm persists: the Dark Arts PDF. This intricate tapestry of ancient practices, contemporary interpretations, and cultural influences has captivated the human imagination for centuries. Join us as we delve into the enigmatic world of the Dark Arts, separating myth from reality and exploring the depths of its influence on our collective consciousness.",
      "assets/pdf/book3.pdf",
      "Mario Amendo",
      4),
  MainBook(
      "Irrfan Khan: A Life in Movies",
      "assets/book4.jpg",
      "Mystery",
      "Jane Austen’s “Pride and Prejudice book” stands as a literary masterpiece, captivating readers since its publication. In this exploration, we delve into the novel’s background, its enduring themes, and the impact it has had on literature and culture.",
      "assets/pdf/book4.pdf",
      "Shubhra Gupta",
      2),
  MainBook(
      "Spare",
      "assets/book5.jpg",
      "Classic",
      "In the dimly lit corridors of human history, a mysterious and often misunderstood realm persists: the Dark Arts PDF. This intricate tapestry of ancient practices, contemporary interpretations, and cultural influences has captivated the human imagination for centuries. Join us as we delve into the enigmatic world of the Dark Arts, separating myth from reality and exploring the depths of its influence on our collective consciousness.",
      "assets/pdf/book3.pdf",
      "Mario Amendo",
      4),
  MainBook(
      "The World: A Family History",
      "assets/book6.jpg",
      "Fantasy",
      "The magical world of Harry Potter has captured the hearts of readers globally. Among the seven books that make up the series, “Harry Potter and the Philosopher’s Stone” stands out as the inception of this enchanting journey. Let’s delve into the magic, mysteries, and cultural impact of this literary masterpiece.",
      "assets/pdf/book6.pdf",
      "British historian Simon Sebag Montefiore",
      5),
  MainBook(
      "Breaking Barriers: the Story of a Dalit Chief Secretary",
      "assets/book7.jpg",
      "Adventure",
      ". This literary masterpiece, created by the renowned swordsman Miyamoto Musashi, is a thorough examination of strategy, philosophy, and life itself rather than just a manual for swordsmanship.",
      "assets/pdf/book7.pdf",
      "Kaki Madhava Rao",
      5),
  MainBook(
      "Ambedkar: A Life",
      "assets/book8.jpg",
      "Fiction",
      "In a world filled with countless opportunities and challenges, it’s essential to embrace the idea of do epic shit. This concept isn’t just about achieving extraordinary success; it’s about pushing your limits, reaching for the stars, and leaving a lasting impact. In this article, we will explore the meaning of “do epic shit” and why it’s crucial in today’s fast-paced world.",
      "assets/pdf/book8.pdf",
      "Shashi Tharoor",
      4),
  MainBook(
      "Human Anatomy",
      "assets/book9.jpg",
      "Health",
      "In a world bombarded with information, it’s easy to accept our thoughts at face value. However, the importance of critical thinking cannot be overstated. This article delves into the impact of unquestioned beliefs, the significance of cognitive biases, and the transformative power of embracing skepticism.",
      "assets/pdf/book9.pdf",
      "Dr. Ashvini Kumar Dwivedi",
      4),
];

List<AuthorDetail> authors = [
    AuthorDetail("Shubhra Gupta", 20, "author1.jpg"),
    AuthorDetail("British historian Simon Sebag Montefiore", 30, "author2.jpg"),
    AuthorDetail("Kaki Madhava Rao", 10, "author3.jpg"),
    AuthorDetail("Dr. Ashvini Kumar Dwivedi", 4, "author4.jpg"),
    AuthorDetail("Mukhyamantrir Diary 1", 8, "author5.jpg"),
    AuthorDetail("Professor K.K. Abdul Gaffar's", 20, "author6.jpg"),
    AuthorDetail("STamal Bandyopadhyay", 44, "author7.jpg"),
    AuthorDetail("J. R. Moehringer", 22, "author8.jpg"),
    AuthorDetail("Aashish Chandorkar and Suraj Sudhir", 35, "author9.jpg"),
    AuthorDetail("Javed Akhtar and Arvind Mandloi", 6, "author10.jpg"),
  ];

String discoverTitle = "Discover Book";
String trendingBook = "Trending Book";
String authorTitle = "Author to follow";
String trendingBookTitle = "Trending book";
int selectedIndex = 0;

final iconList = <IconData>[
  Icons.home_outlined,
  Icons.category_sharp,
  Icons.app_registration_outlined,
  Icons.settings
];

List<Icon> passingIcon = [
  const Icon(Icons.home),
  const Icon(Icons.category_outlined),
  const Icon(Icons.app_registration_outlined),
  const Icon(Icons.settings)
];

Color activeNavigationBarColor = Colors.pinkAccent;
Color notActiveNavigationBarColor = Colors.black45;
Color backgroundColor = Colors.white;
Color splashColor = Colors.pink;

String descriptionTitle = "Description";
String read = "Read";

List<MainBook> result = books.where((book) => book.rating > 3).toList();
