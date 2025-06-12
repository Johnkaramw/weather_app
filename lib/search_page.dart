import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(
          'البحث عن مدينتك',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 350, right: 15, left: 15),
          child: TextField(
            decoration: InputDecoration(
              filled: false,
              fillColor: Colors.grey,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 244, 67, 54)),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
              label: Text('اسم المدينة'),
            ),
          ),
        ),
      ),
    );
  }
}
