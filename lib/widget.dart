import 'package:flutter/material.dart';

Widget promoCard(image) {
  return AspectRatio(
    //It ensures that the widget maintains a consistent shape, regardless of the screen size or orientation.
    aspectRatio: 2.5 / 3,
    child: Container(
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.1),
            ],
          ),
        ),
      ),
    ),
  );
}
