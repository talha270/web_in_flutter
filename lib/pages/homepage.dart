import 'package:flutter/material.dart';
import 'package:web_in_flutter/pages/containers/container3.dart';
import 'package:web_in_flutter/pages/containers/container4.dart';
import 'package:web_in_flutter/pages/containers/container5.dart';

import '../widgets/navbar.dart';
import 'containers/container1.dart';
import 'containers/container2.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
            // margin: const EdgeInsets.all(10),
            child:Column(
              children: [
                const Navbar(),
                Container1(),
                Container2(),
                Container3(),
                Container4(),
                Container5(),
              ],
            ),
          )),
    );
  }
}

