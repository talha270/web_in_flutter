import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_in_flutter/utils/colors.dart';

import '../utils/styles.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobilenavbar(),
      desktop: (BuildContext context) => desktopnavbar(),
      // Uncomment the following line if you want to support tablet layouts.
      // tablet: (BuildContext context) => desktopnavbar(),
    );
  }
}

Widget mobilenavbar() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.menu),
        navlogo(),
      ],
    ),
  );
}

Widget desktopnavbar() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 110,
          child: Image.asset("assets/images/logo.png"),
        ),
        Row(
          children: [
            navbutton("Features"),
            navbutton("About Us"),
            navbutton("Pricing"),
            navbutton("Feedback"),
          ],
        ),
        Container(
          height: 45,
          child: ElevatedButton(
            onPressed: () {},
            style: borderedButtonStyle,
            child: Text(
              "Request A Demo",
              style: TextStyle(color: AppColors.primary),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget navlogo() {
  return Container(
    width: 110,
    decoration: const BoxDecoration(
      image: DecorationImage(image: AssetImage("assets/images/logo.png")),
    ),
  );
}

Widget navbutton(String text) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    child: TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(fontSize: 18, color: Colors.black),
      ),
    ),
  );
}
