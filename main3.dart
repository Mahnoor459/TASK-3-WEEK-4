import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Design Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Design Example"),
      ),
      body: size.width < 600 ? SmallScreenLayout() : LargeScreenLayout(),
    );
  }
}

class SmallScreenLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Center(child: Text("Small 1")),
          ),
          SizedBox(height: 20),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
            child: Center(child: Text("Small 2")),
          ),
        ],
      ),
    );
  }
}

class LargeScreenLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Center(child: Text("Large 1")),
          ),
          SizedBox(width: 20),
          Container(
            width: 200,
            height: 200,
            color: Colors.green,
            child: Center(child: Text("Large 2")),
          ),
        ],
      ),
    );
  }
}
