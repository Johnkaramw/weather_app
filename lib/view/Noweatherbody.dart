import 'package:flutter/material.dart';
import 'package:weather_app/view/search_page.dart';

class Noweatherbody extends StatelessWidget {
  const Noweatherbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Text(
              'لعرض حاله الطقس المباشرة اضغط على ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return SearchPage();
                },
              ),
            );
          },
          icon: Icon(Icons.search, size: 40, color: Colors.green),
        ),
      ],
    );
  }
}
