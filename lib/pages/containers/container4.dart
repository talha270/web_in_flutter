import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';
import '../../widgets/commoncontainer.dart';
class Container4 extends StatelessWidget {
  Container4({super.key});
  double? w;
  @override
  Widget build(BuildContext context) {
    w=MediaQuery.sizeOf(context).width;
    return ScreenTypeLayout.builder(
      mobile: (p0) => MobileContainer4(),
      desktop: (p0) => DesktopContainer4(),
    );
  }

  //================ MOBILE ===============
  Widget MobileContainer4() {
    return CommonContainerMobile(
        s1: 'FREE SOME COST',
        s2: 'Save cost \nfor you \nand family',
        s3: 'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        image: illustration2,
        imageLeft: true,w: w!);
  }

  //============== DESKTOP =============
  Widget DesktopContainer4() {
    return CommonContainer(
        w: w!,
        s1: 'FREE SOME COST',
        s2: 'Save cost \nfor you \nand family',
        s3: 'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. \nEnim ipsum, amet quis ullamcorper eget ut.',
        image: illustration2,
        imageLeft: true);
  }
}
