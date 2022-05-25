import 'package:flutter/material.dart';
import 'package:rest_api/providers/AppServices.dart';
import 'package:rest_api/views/Home.dart';
import 'package:get/get.dart';
import 'package:rest_api/views/PostsPage.dart';
import 'package:http/http.dart' as http;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'REST APIs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home()
    );
  }
}
