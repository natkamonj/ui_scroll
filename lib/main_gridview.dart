import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(100, (i) => 'Item ${i + 1}');

    return Scaffold(
      appBar: AppBar(title: Text('Chapter6'), backgroundColor: Colors.orange),

      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          //childAspectRatio: 8 /8, // สูง/กว้าง
          childAspectRatio: 0.9,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.orange[100 + (index % 6) * 100],

            child: Center(child: Text('Tile $index')),
          );
        },
      ),

      //body: GridView.count(
      //crossAxisCount: 5, //2 คอลัมน์
      //childAspectRatio: 5 / 10, // ความกว้างเป็น 1.5 เท่าของความสูง
      //padding: const EdgeInsets.all(0.0), //ระยะห่างครอบ
      //mainAxisSpacing: 10.0, // ระยะห่างแนวตั้ง
      //crossAxisSpacing: 10.0, // ระยะห่างแนวนอน
      //children: List<Widget>.generate(20, (index) {
      // สร้างไอเท็มตัวอย่าง 20 อัน
      //return Container(
      //color: Colors.teal[100 + (index % 8) * 100],
      //child: Center(child: Text('Item $index')),
      //);
      //}),
    );
  }
}
