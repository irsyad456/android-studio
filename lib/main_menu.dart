import 'package:flutter/material.dart';
import 'layout.dart';
import 'widget_interaktif.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white70,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => layout(),
                ),
              );
            }, child: Text('9/11 Incident')),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => widget()
                )
              );
            }, child: Text('Interactivity Widget'))
          ],
        ),
      ),
    );
  }
}
