import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';
import '../../widgets/commoncontainer.dart';

class Container3 extends StatelessWidget {
  Container3({super.key});

  double? w;

  @override
  Widget build(BuildContext context) {
    w=MediaQuery.sizeOf(context).width;
    return ScreenTypeLayout.builder(
      mobile: (p0) => MobileContainer3(),
      desktop: (p0) => DesktopContainer3(),
    );
  }

  //================ MOBILE ===============
  Widget MobileContainer3() {
    return CommonContainerMobile(
        s1: 'ALWAYS ONLINE',
        s2: 'Real-time \nsupport \nwith cloud',
        s3: 'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        image:illustration1,
        imageLeft: false,w: w!);
  }

  //============== DESKTOP =============
  Widget DesktopContainer3() {
    return CommonContainer(
        s1: 'ALWAYS ONLINE',
        s2: 'Real-time \nsupport \nwith cloud',
        s3: 'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. \nEnim ipsum, amet quis ullamcorper eget ut.',
        image: illustration1,
        imageLeft: false,w: w!);
  }
}
