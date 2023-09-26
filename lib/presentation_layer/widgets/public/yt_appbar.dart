import 'package:flutter/material.dart';

PreferredSizeWidget ytAppBar({
  required String title,
}) {
  return AppBar(
    elevation: 0.0,
    centerTitle: true,
    backgroundColor: Colors.white,
    title: Text(
      title,
      style: const TextStyle(color: Colors.black, fontSize: 27),
    ),
  );
}
