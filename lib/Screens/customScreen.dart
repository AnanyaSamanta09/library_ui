import 'package:flutter/material.dart';
import 'package:library_ui/dummy_Data/data.dart';

class CustomScreen extends StatelessWidget {
  const CustomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
    ), itemBuilder:(BuildContext context, int index){
      return Card(
        child: Column(
          children: [
            Image.asset(cardlist[index].image),
            Text(cardlist[index].title,
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
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

