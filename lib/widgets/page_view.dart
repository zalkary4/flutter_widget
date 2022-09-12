import 'package:flutter/material.dart';

class PageViewWid extends StatefulWidget {
  const PageViewWid({
    super.key,
  });

  @override
  State<PageViewWid> createState() => _PageViewWidState();
}

class _PageViewWidState extends State<PageViewWid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Page 1',
                style: TextStyle(color: Colors.white, fontSize: 60),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                'Page 2',
                style: TextStyle(color: Colors.white, fontSize: 60),
              ),
            ),
          ),
          Container(
            color: Colors.orange,
            child: const Center(
              child: Text(
                'Page 3',
                style: TextStyle(color: Colors.white, fontSize: 60),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
