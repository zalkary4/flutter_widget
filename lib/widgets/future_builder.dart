import 'package:flutter/material.dart';

class FutureBuilderABC extends StatefulWidget {
  const FutureBuilderABC({
    super.key,
  });

  @override
  State<FutureBuilderABC> createState() => _FutureBuilderABCState();
}

Future<String> getData() async {
  await Future.delayed(const Duration(seconds: 1));
  // throw 'An error occured';
  return 'it works';
}

class _FutureBuilderABCState extends State<FutureBuilderABC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator.adaptive();
          }
          if (snapshot.hasError) {
            snapshot.error.toString();
          } else {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(snapshot.data.toString()),
                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: const Text('refresh'))
              ],
            );
          }
        },
        future: getData(),
      )),
    );
  }
}
