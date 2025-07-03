import 'package:flutter/material.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            children: [
              Center(
                child: Text(
                  'سوهاج',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Text('اخر تحديث 5:30', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
        SizedBox(height: 50),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(100),
                child: Image(
                  image: AssetImage('assets/images/weather.jpg'),
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            SizedBox(width: 80),
            Text('38°', style: TextStyle(fontSize: 50)),
            SizedBox(width: 50),
            Column(
              children: [
                Text(' 45° القصوى', style: TextStyle(fontSize: 25)),
                Text(' 21° الصغري', style: TextStyle(fontSize: 25)),
              ],
            ),
          ],
        ),
        SizedBox(height: 60),
        Text('الوضع الليلي', style: TextStyle(fontSize: 30)),
      ],
    );
  }
}
