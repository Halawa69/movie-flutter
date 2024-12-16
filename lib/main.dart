<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:sampleproject/page1.dart';
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

=======
import 'package:awesome_food_app/pages/home_page.dart';
import 'package:awesome_food_app/pages/single_item_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
>>>>>>> 7ac4455 (Initial commit)
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
<<<<<<< HEAD

=======
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }
>>>>>>> 7ac4455 (Initial commit)

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
        home: Homepage(),
=======
      routes: {
        "/": (context) => HomePage(),
        "singleItemPage" : (context) => SingleItemPage(),
      },
>>>>>>> 7ac4455 (Initial commit)
    );
  }
}
