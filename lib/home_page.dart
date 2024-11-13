import 'package:flutter/material.dart';
import 'widget.dart';
import 'constants.dart';
import 'app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCFD0D0),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.black87,
            onPressed: () {}),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBarContainer(
                  mainText: "Inspiration",
                ),
                const SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Meditation",
                        style: kCommonTextStyle,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            promoCard('images/meditateBoy.jpg'),
                            promoCard('images/meditateGirl.jpg'),
                            promoCard('images/meditateBoy2.jpg'),
                            promoCard('images/meditateGirl2.jpg'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      const Text(
                        "Take a Walk",
                        style: kCommonTextStyle,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            promoCard('images/walkBoy.jpg'),
                            promoCard('images/walkGirl.jpg'),
                            promoCard('images/walkBoy2.jpg'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      const Text(
                        "Make a Trip",
                        style: kCommonTextStyle,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/travelBus.jpg',
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
