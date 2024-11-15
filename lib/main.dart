import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BloodScreen(),
    );
  }
}

class BloodScreen extends StatelessWidget {
  const BloodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Need Blood",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xffF44336),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 90,
              backgroundColor: Color(0xff757175),
              child: Icon(
                Icons.bloodtype_outlined,
                color: Colors.red,
                size: 90,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Donate Blood",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xffFEF7FF),
    );
  }
}
