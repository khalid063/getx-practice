import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Tutorial'),
        centerTitle: true,
      ),
      body: Column(
        children: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.masks_sharp),
        onPressed: () {
          Get.snackbar(
              'Khalid Ahmad',
              'Test Massage of SnackBar',
            snackPosition: SnackPosition.BOTTOM,
          );
        },
      ),
    );
  }
}
