import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget({
    super.key,
  });

  @override
  State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ExpansionTile(
        title: Text('See more'),
        leading: Icon(Icons.info),
        backgroundColor: Colors.black12,
        children: [
          ListTile(
            title: Text('First'),
          ),
          ListTile(
            title: Text('Second'),
          ),
          ListTile(
            title: Text('Third'),
          )
        ],
      ),
    );
  }
}
