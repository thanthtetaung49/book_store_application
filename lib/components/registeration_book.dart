import 'package:book_store/components/button_navigation_bar.dart';
import 'package:book_store/components/floating_action_buttom.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:book_store/Utility.dart';
import 'package:book_store/pdf_database_helper.dart';
import 'package:book_store/pdf.dart';
import 'dart:async';
 
 class SaveImageDemoSQLite extends StatefulWidget {
   const SaveImageDemoSQLite({super.key});
 
   @override
   State<SaveImageDemoSQLite> createState() => _SaveImageDemoSQLiteState();
 }
 
 class _SaveImageDemoSQLiteState extends State<SaveImageDemoSQLite> {
  late Future<File> imageFile;
  late Image image;
  DBHelper dbHelper = DBHelper();
  List<Photo> images = [];
  final ImagePicker _imagePicker = ImagePicker(); 
  String? imgString;
  
  String title = "Image storage";
 
  @override
  void initState() {
    super.initState();
    images = [];
    dbHelper = DBHelper();
    refreshImages();
  }
 
  refreshImages() {
    dbHelper.getPhotos().then((imgs) {
      setState(() {
        images.clear();
        images.addAll(imgs);
      });
    });
  }
 
  pickImageFromGallery() {
    _imagePicker.pickImage(source: ImageSource.gallery).then((imgFile) {
      if (imgFile != null ) {
        String imgString = Utility.base64String(File(imgFile.path).readAsBytesSync());
      Photo photo = Photo(0, imgString);
      dbHelper.save(photo);
      refreshImages();
      }
    });
  }
 
  gridView() {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: images.map((photo) {
          return Utility.imageFromBase64String(photo.photo_name);
        }).toList(),
      ),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              pickImageFromGallery();
            },
          )
        ],
      ),
      floatingActionButton: MyFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BookStoreBottomNavigationBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: gridView(),
            )
          ],
        ),
      ),
    );
  }
 }