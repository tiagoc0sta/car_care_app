import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Page'),
      ),
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/splash.svg', // Replace with the actual image path
            fit: BoxFit.cover, // Cover the entire screen
            width: double.infinity,
            height: double.infinity,
          ),

          // Content Centered on Top of the Image
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome to My App!',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white, // Text color
                  ),
                ),
                // Add any other content here
              ],
            ),
          ),
        ],
      ),
    );
  }
}
