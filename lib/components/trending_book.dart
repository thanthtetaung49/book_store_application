import 'package:book_store/class/application_variable_class.dart';
import 'package:book_store/class/book.dart';
import 'package:book_store/components/detail_book.dart';
import 'package:flutter/material.dart';

class TrendingBook extends StatefulWidget {
  const TrendingBook({super.key});

  @override
  State<TrendingBook> createState() => _TrendingBookState();
}

class _TrendingBookState extends State<TrendingBook> {
  List<MainBook> trendingBooks = result;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      reverse: false,
      child: Row(
        children: trendingBooks.map((trendingBook) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailBook(book: trendingBook),
                ),
              );
            },
            child: Container(
              width: 120.0,
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)),
                    child: Image.asset(
                      trendingBook.imagePath,
                      fit: BoxFit.cover,
                      width: 120.0,
                      height: 100.0,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3.0, vertical: 10.0),
                        child: Text(
                          trendingBook.title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
