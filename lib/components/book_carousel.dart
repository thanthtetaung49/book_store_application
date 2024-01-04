import 'package:book_store/components/detail_book.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:book_store/class/application_variable_class.dart';

class CarouselBook extends StatefulWidget {
  const CarouselBook({super.key});

  @override
  State<CarouselBook> createState() => _CarouselBookState();
}

class _CarouselBookState extends State<CarouselBook> {
  @override
  Widget build(BuildContext context) {
    // final _controller = InfiniteScrollController();
    return CarouselSlider(
      options: CarouselOptions(
        height: 300.0,
        aspectRatio: 16 / 9,
        viewportFraction: 0.4,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
      items: books.map((book) {
        return Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailBook(book: book),
                  ),
                );
              },
              child: Container(
                width: 200.0,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset(book.imagePath,
                    fit: BoxFit.contain, width: 150.0, height: 150.0),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
