import 'package:flutter/material.dart';

class GestureDetectorwidget extends StatefulWidget {
  const GestureDetectorwidget({
    super.key,
  });

  @override
  State<GestureDetectorwidget> createState() => _GestureDetectorwidgetState();
}

int _counter = 0;

class _GestureDetectorwidgetState extends State<GestureDetectorwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _counter += 1;
                });
              },
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    _counter.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _counter -= 1;
                });
              },
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    _counter.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
