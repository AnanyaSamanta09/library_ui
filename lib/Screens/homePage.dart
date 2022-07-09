import 'package:flutter/material.dart';
import 'package:library_ui/Screens/customScreen.dart';
import 'package:library_ui/Screens/device_size.dart';
import 'package:library_ui/Screens/searchBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
        ),
        elevation: 0,
        actions: [
          Icon(Icons.notifications_none_outlined,size: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search,size: 30,),
          ),
        ],

      ),
      drawer: Drawer(

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Library',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),

           SizedBox(
             height: 20,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               SearchBar(),
               Row(
                 children: [
                   Icon(Icons.download),
                   SizedBox(
                     width: 20,
                   ),
                   Icon(Icons.list)
                 ],
               ),
             ],
           ),
            SizedBox(
              height: displayHeight(context)*0.02,
            ),
            Text('Family constitution',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
            ),

            Expanded(child: CustomScreen()),
          ],
        ),
      )
    );
  }
}
