import 'package:flutter/cupertino.dart';

class CupertinoAppWidget extends StatefulWidget {
  const CupertinoAppWidget({
    super.key,
  });

  @override
  State<CupertinoAppWidget> createState() => _CupertinoAppWidgetState();
}

class _CupertinoAppWidgetState extends State<CupertinoAppWidget> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 18, 32, 47),
        primaryColor: CupertinoColors.systemOrange,
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Flutter Mapp'),
        ),
        child: Center(
          child: Icon(CupertinoIcons.share),
        ),
      ),
    );
  }
}
