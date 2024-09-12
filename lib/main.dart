import 'package:flutter/material.dart';

void main() {
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      "Toba Lake Campground", style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text("Medan, Sumatra Utara", style: TextStyle(color: Colors.red[500]),
                  )
                ],
              )
          ),
          Icon(
            Icons.star, color: Colors.red,
          ),
          const Text('41'),
        ],
      )
  );


  @override
  Widget build(BuildContext context) {

    Widget textSection = const Padding(padding: EdgeInsets.all(32),
      child: Text("Lake Toba, located in the northern part of the island of Sumatra in Indonesia, is the largest volcanic lake in the world. "
          "It is about 100 kilometers long, 30 kilometers wide, and up to 505 meters deep. Formed in the caldera of a supervolcano "
          "following a massive eruption around 74,000 years ago, the lake is surrounded by steep, lush green hills and is known for "
          "its stunning natural beauty and tranquil environment.At the center of Lake Toba lies Samosir Island, which is roughly the "
          "size of Singapore and is one of the few islands located within a lake on another island. Samosir Island is culturally significant "
          "as it is home to the Batak people, an indigenous ethnic group known for their traditional houses, rich heritage, and unique customs."
          "The lake is a popular tourist destination, attracting visitors for its breathtaking landscapes, rich cultural history, cool climate, and opportunities for relaxation, swimming, and boating. "
          "It is also a site of great geological interest, as the Toba eruption is believed to have been one of the most powerful volcanic events in Earth's history, with global climatic impacts.",
        softWrap: true,
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn(color, Icons.calendar_today, "Today"),
        buildButtonColumn(color, Icons.settings, "Settings"),
        buildButtonColumn(color, Icons.calendar_month, "Tomorrow")
      ],
    );

    return MaterialApp(

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text ("Good Morning Dulanjali"),
          ), //appbar
          body:
          ListView(
      children: [
      titleSection, textSection, buttonSection],
    )
    )
    );
  }
  Column buildButtonColumn(Color color, IconData icon, String label){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color,),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}
