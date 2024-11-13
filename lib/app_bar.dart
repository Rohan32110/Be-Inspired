import 'package:flutter/material.dart';
import 'constants.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({super.key, required this.mainText});

  final String mainText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Find your",
            style: kCommonTextStyle,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                mainText,
                style: kBarBigText,
              ),
              const Text(
                " through",
                style: kCommonTextStyle,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: const Color(0xFFF4F3F3),
              borderRadius: BorderRadius.circular(9),
            ),
            child: const TextField(
              cursorColor: Colors.black87,
              cursorRadius: Radius.circular(5),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: Colors.black87),
                hintText: "Search your Inspiration",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
