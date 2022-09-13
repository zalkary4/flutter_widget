import 'package:flutter/material.dart';

class InteractiveViewerWidget2 extends StatefulWidget {
  const InteractiveViewerWidget2({
    super.key,
  });

  @override
  State<InteractiveViewerWidget2> createState() =>
      _InteractiveViewerWidget2State();
}

class _InteractiveViewerWidget2State extends State<InteractiveViewerWidget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(double.infinity),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('InteractiveViewer'),
          ),
        ),
      ),
    );
  }
}
