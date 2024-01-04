import 'package:book_store/class/application_variable_class.dart';
import 'package:flutter/material.dart';

class Author extends StatefulWidget {
  const Author({super.key});

  @override
  State<Author> createState() => _AuthorState();
}

class _AuthorState extends State<Author> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: authors.map((author) {
          return Container(
            width: 200.0,
            height: 150.0,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.only(top: 10.0, right: 10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.white),
            child: Row(
              children: [
                 CircleAvatar(
                  backgroundImage: AssetImage("assets/authorImage/${author.authorPhotoPath}"),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          author.authorName,
                          style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10.0,),
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Icon(
                                        Icons.book_sharp,
                                        color: Colors.grey[500],
                                        size: 18.0,
                                      ),
                                    ),
                                    Text(
                                      "${author.numberOfBook.toString()} Books",
                                      style: TextStyle(color: Colors.grey[500], fontSize: 13.0),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
