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
          Card(
            child: ListTile(
              title: Text('GetX Diolog Alert'),
              subtitle: Text(''),
              onTap: (){
                Get.defaultDialog(
                  title: 'Delete Chat',
                  middleText: 'Are you sure, want to remove',
                  contentPadding: EdgeInsets.all(10),
                  textConfirm: 'yes',
                  textCancel: 'No',
                  ///content: Text(), for custom design, Can use "Column" also
                  confirm: TextButton(onPressed: (){
                    //Navigator.pop(context);
                    Get.back();
                  }, child: Text('ok'),),
                  cancel: TextButton(onPressed: (){}, child: Text('Cancel'),),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('GetX Diolog Alert'),
              subtitle: Text(''),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Light Theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Dark Theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  )
                );
              },
            ),
          ),
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
