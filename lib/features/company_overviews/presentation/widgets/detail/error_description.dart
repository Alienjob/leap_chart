import 'package:flutter/material.dart';

class ErrorDescriptionField extends StatelessWidget {
  const ErrorDescriptionField(this.title, this.message, {Key? key})
      : super(key: key);

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$title:',
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w800, color: Colors.red),
            ),
            Text(
              message,
              style: const TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
