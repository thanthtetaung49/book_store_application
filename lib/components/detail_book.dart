import 'package:book_store/class/book.dart';
import 'package:book_store/components/star_rating.dart';
import 'package:book_store/components/pdf_view.dart';
import 'package:book_store/class/application_variable_class.dart';
import 'package:flutter/material.dart';

class DetailBook extends StatefulWidget {
  final MainBook book;
  const DetailBook({super.key, required this.book});

  @override
  State<DetailBook> createState() => _DetailBookState();
}

class _DetailBookState extends State<DetailBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_sharp,
                  size: 40.0,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 500.0,
                  color: Colors.grey[200],
                  child: Image.asset(
                    widget.book.imagePath,
                    fit: BoxFit.contain,
                    height: 250.0,
                  ),
                ),
                Container(
                  width: 500,
                  padding: const EdgeInsets.only(bottom: 9.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 10.0, right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            widget.book.title,
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            widget.book.author,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey[500],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 5.0),
                          child: StarRating(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 10.0),
                          child: Text(
                            widget.book.description,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 12,
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => PdfScreen(
                                      path: widget.book.pdfFilePath,
                                      title: widget.book.title),
                                ),
                              );
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.pinkAccent),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),),),),
                            child: Text(
                              read,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// style: ButtonStyle(
//               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                 RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8.0), // You can adjust the border radius as needed
//                 ),
//               ),
//               side: MaterialStateProperty.all<BorderSide>(BorderSide.none), // Remove the default border
//             ),
