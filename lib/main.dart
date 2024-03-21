import 'package:flutter/material.dart';
import 'package:recase/recase.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false, // Remove debug banner
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String inputText = '';
  String titleCase = '';
  String camelCase = '';
  String pascalCase = '';
  String snakeCase = '';
  String sentenceCase = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReCase Demo', style: TextStyle(fontFamily: 'Roboto')),
        leading: IconButton(
          icon: Icon(Icons.menu, semanticLabel: 'Menu',), // Hamburger menu icon
          onPressed: () {
            // Handle menu action
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search), // Search icon
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart), // Cart icon
            onPressed: () {
              // Handle cart action
            },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      inputText = value;
                      titleCase = ReCase(value).titleCase;
                      camelCase = ReCase(value).camelCase;
                      pascalCase = ReCase(value).pascalCase;
                      snakeCase = ReCase(value).snakeCase;
                      sentenceCase = ReCase(value).sentenceCase;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter a word',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Convert'),
              ),
              SizedBox(height: 20),
              Text(
                'Title Case: $titleCase',
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                'Camel Case: $camelCase',
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                'Pascal Case: $pascalCase',
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                'Snake Case: $snakeCase',
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                'Sentence Case: $sentenceCase',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home), // Home button
              onPressed: () {
                // Handle home action
              },
            ),
            IconButton(
              icon: Icon(Icons.category), // Categories button
              onPressed: () {
                // Handle categories action
              },
            ),
            IconButton(
              icon: Icon(Icons.attach_money), // Price button
              onPressed: () {
                // Handle price action
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your floating action button action here
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
