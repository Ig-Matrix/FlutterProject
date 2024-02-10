import 'package:flutter/material.dart';
import 'package:foodrecipe/widgets/Appbar.dart';
import 'package:foodrecipe/widgets/Video.dart';
import 'package:foodrecipe/widgets/Reviews.dart';
import 'package:foodrecipe/widgets/UserProfile.dart';
import 'package:foodrecipe/IngredientSection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Food Recipe',
      home: MyHomePage(title: ''),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "How to make french toast",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, fontFamily: 'Poppins',),
              ),
              const SizedBox(
                height: 17,
              ),
              const VideoImage(bgImage: "assets/images/image_13.png"),
              const SizedBox(
                height: 14,
              ),
              Reviews(rating: 4.5),
              const SizedBox(
                height: 12,
              ),
              UserProfile(image: "assets/images/unsplash.png", name: "Roberta Anny", location: "Bali, Indonesia"),
              const SizedBox(
                height: 20,
              ),
              const IngredientSection(),
            ],
          ),
        ),
      ),
    );
  }
}
