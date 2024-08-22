import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello BMC Flutter',
      home: Scaffold(
        appBar: AppBar(title: Text("Hello BMC Flutter"),
        backgroundColor: Colors.tealAccent,
        ),
          body:Builder(builder:(context)=> Center(
              child: Column (children: [
                Text('Hello Flutter',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent),
              ),

                Text (
                  'Discover the Flutter',
                  style: TextStyle(fontSize: 20, color:
                   Colors.deepPurpleAccent),
                ),
                Image.network('https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                height: 350,
                ),
                ElevatedButton(
                  child: Text('Contact Use'),
                  onPressed: () => contactUs(context),
                )
              ]
                )
              ),
          ),
        )
      );
  }
} // end line of my class


void contactUs(BuildContext context) {
  showDialog(context: context,
      builder: (BuildContext)
  {
    return AlertDialog(
      title: Text('Contact Us'),
      content: Text('mail us at grc@gmail.com'),
      actions: <Widget>[
        TextButton(
          child: Text('Close'),
          onPressed: () => Navigator.of(context).pop(),
          )
        ],
      );
    }//builder
  );//show dialog
} //void contactus