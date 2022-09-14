import 'package:flutter/material.dart';

class AllertDialog extends StatefulWidget {
  const AllertDialog({
    super.key,
  });

  @override
  State<AllertDialog> createState() => _AllertDialogState();
}

class _AllertDialogState extends State<AllertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const Text('App bar'),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('close'),
                  )
                ],
                title: const Text('Flutter Mapp'),
                contentPadding: const EdgeInsets.all(20),
                content: const Text('This is the Alert Dialog'),
              ),
            );
          },
          child: const Text('Show allert dialog'),
        ),
      ),
    );
  }
}
