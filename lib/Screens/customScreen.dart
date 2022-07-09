import 'package:flutter/material.dart';
import 'package:library_ui/Screens/device_size.dart';
import 'package:library_ui/dummy_Data/data.dart';

class CustomScreen extends StatelessWidget {
  const CustomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 6,
      childAspectRatio: 0.95
    ), itemBuilder:(BuildContext context, int index){
      return Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,  //NOTE: for bringing the title from the start
          children: [
            Image.asset(cardlist[index].image),
            SizedBox(
              height: displayHeight(context)*0.02,
            ),
            Text(cardlist[index].title,
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),

          SizedBox(
            height: displayHeight(context)*0.01,
          ),

          Text(cardlist[index].desc)

          ],
        ),
      );
    },
      itemCount: cardlist.length,
    );
  }
}

