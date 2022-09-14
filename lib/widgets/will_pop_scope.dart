import 'package:flutter/material.dart';

class WWWWillPopScope extends StatefulWidget {
  const WWWWillPopScope({
    super.key,
  });

  @override
  State<WWWWillPopScope> createState() => _WWWWillPopScopeState();
}

class _WWWWillPopScopeState extends State<WWWWillPopScope> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          // body: const Center(),
        ),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }
}
