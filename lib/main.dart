import 'package:flutter/material.dart';
import 'model/service/photoApiService.dart';
import 'provider/photo_list_provider.dart';
import 'provider/photo_view_data_provider.dart';
import 'provider/scrollController.dart';
import 'view/photo_gallery_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: PhotoViewDataProvider()),//PhotoViewDataProvider
        ChangeNotifierProvider.value(value: PhotoListProvider()),//PhotoApiService
        ChangeNotifierProvider.value(value: PhotoApiService()),//GalleryScrollController
        ChangeNotifierProvider.value(value: GalleryScrollController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          //primarySwatch: Colors.blue,
        ),
        home: PhotoGallery(),
      ),
    );
  }
}