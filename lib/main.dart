import 'package:flutter/material.dart';
import 'package:weatherflutterapp/dataservice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _cityTextController = TextEditingController();
  final _dataService = DataService();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/homepage.png'),
            fit: BoxFit.cover,
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text("Weather",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              TextField(
                style: TextStyle(color: Colors.white, fontSize: 25),
                decoration: InputDecoration(
                  hintText: 'Search Location',
                  hintStyle:
                  TextStyle(color: Colors.white, fontSize: 18.0),
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void _search(){
    _dataService.getWeather(_cityTextController.text);
  }
}



