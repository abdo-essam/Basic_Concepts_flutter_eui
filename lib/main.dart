import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp is the root widget that provides material design elements
    return MaterialApp(
      title: 'Flutter Basic Concepts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Home uses Scaffold - a basic material design layout structure
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the structure for the visual interface
    return Scaffold(
      // AppBar is the top navigation bar
      appBar: AppBar(
        title: const Text('Flutter Basic Concepts'),
      ),
      // Body contains the main content
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text widget displays a string of text with a single style
              const Text(
                'Welcome to Flutter Basics',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Container with styling and a child widget
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'This is a Container widget that can hold other widgets and apply styling.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),

              // Row arranges children horizontally
              const Text('Row Example (horizontal arrangement):',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.green,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Column arranges children vertically
              const Text('Column Example (vertical arrangement):',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    height: 30,
                    color: Colors.orange,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 150,
                    height: 30,
                    color: Colors.purple,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 100,
                    height: 30,
                    color: Colors.teal,
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Image widget for displaying images
              const Text('Image Widget Example:',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),

              // Combining multiple concepts
              const Text('Combined Example:',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.amber,
                      child: const Center(
                        child: Text('Flutter'),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Flutter Widgets',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'This example combines Container, Row, Column, and Text widgets to create a more complex UI component.',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
Explanation of Key Concepts:
MaterialApp: The root widget that sets up the app theme and provides material design widgets.

Scaffold: Provides the basic structure for a material design app, including AppBar, body, etc.

AppBar: The top navigation bar that typically contains the title and actions.

Text: Widget that displays text with specified styling.

Container: A box that can be decorated and contains other widgets. It can have padding, margins, backgrounds, etc.

Row: Arranges its children horizontally in a row.

Column: Arranges its children vertically in a column.

Image: Displays images from various sources (network, assets, file, etc.).
*/
