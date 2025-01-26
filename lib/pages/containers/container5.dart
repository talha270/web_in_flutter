import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';
import '../../widgets/commoncontainer.dart';

class Container5 extends StatelessWidget {
  Container5({Key? key}) : super(key: key);
  double ? w;
  @override
  Widget build(BuildContext context) {
    w=MediaQuery.sizeOf(context).width;
    return ScreenTypeLayout.builder(
      mobile: (p0) => MobileContainer5(),
      desktop: (p0) => DesktopContainer5(),
    );
  }

  //================ MOBILE ===============
  Widget MobileContainer5() {
    return CommonContainerMobile(
        s1: 'USE ANYTIME',
        s2: 'Use anytime \nwhen you \nneed',
        s3: 'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        image: illustration3,
        imageLeft: false,w: w!);
  }

  //============== DESKTOP =============
  Widget DesktopContainer5() {
    return CommonContainer(
        s1: 'USE ANYTIME',
        s2: 'Use anytime \nwhen you \nneed',
        s3: 'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. \nEnim ipsum, amet quis ullamcorper eget ut.',
        image: illustration3,
        imageLeft: false,w: w!);
  }
}
