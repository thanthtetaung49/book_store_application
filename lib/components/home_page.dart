import 'package:book_store/components/author.dart';
import 'package:book_store/components/book_carousel.dart';
import 'package:book_store/components/trending_book.dart';
import 'package:flutter/material.dart';
import 'package:book_store/class/application_variable_class.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _drawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        onPressed: () {
          // ZoomDrawer.of(context)!.toggle();
          if (ZoomDrawer.of(context)!.isOpen()) {
            ZoomDrawer.of(context)!.close();
          } else {
            ZoomDrawer.of(context)!.open();
          }
        },
        icon: const Icon(Icons.menu),
      )),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: 500.0,
              height: 150.0,
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(100.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            // print('hello');
                            // if (ZoomDrawer.of(context)!.isOpen()) {
                            //   ZoomDrawer.of(context)!.close();
                            // } else {
                            //   ZoomDrawer.of(context)!.open();
                            // }
                          },
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.pinkAccent,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.pinkAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                    child: Row(
                      children: [
                        Text(
                          discoverTitle,
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  Container(
                    width: 300.0,
                    height: 200.0,
                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const CarouselBook(),
                  ),
                  SizedBox(
                    width: 300.0,
                    height: 230.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                authorTitle,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[700]),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.pinkAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Author()
                      ],
                    ),
                  ),
                  Container(
                    width: 300.0,
                    height: 220.0,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              trendingBookTitle,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700]),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: Colors.pinkAccent,
                              ),
                            ),
                          ],
                        ),
                        const TrendingBook()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
