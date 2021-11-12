import 'package:flutter/material.dart';

Future<bool> showConfirmationDialog(
  BuildContext context,
  String message, {
  String positiveResponse = "Yes",
  String negativeResponse = "No",
}) async {
  var result = await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(message),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        actions: [
          FlatButton(
            child: Text(
              positiveResponse,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
          FlatButton(
            child: Text(
              negativeResponse,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.pop(context, false);
            },
          ),
        ],
      );
    },
  );
  if (result == null) result = false;
  return result;
}
