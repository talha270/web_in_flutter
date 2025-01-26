import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_in_flutter/utils/colors.dart';
import 'package:web_in_flutter/utils/constants.dart';

class Container2 extends StatelessWidget {
  Container2({super.key});
  late double w;
  late double h;
  @override
  Widget build(BuildContext context) {
    w=MediaQuery.sizeOf(context).width;
    h=MediaQuery.sizeOf(context).height;
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileContainer2(),
      desktop:(p0) =>  desktopContainer2(),
    );
  }
  }
  Widget mobileContainer2(){
    return Container(
      height: 480,
      width: double.infinity,
      color: AppColors.primary,
      child: Column(
        children: [
          Expanded(child:Stack(
            children: [
              Positioned(
                  top:-20,
                  right: -20,
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: const BoxDecoration(
                      image:DecorationImage(image: AssetImage(vector1),fit: BoxFit.contain),
                    ),
                  )),
              Positioned(
                  bottom:-20,
                  left: -20,
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: const BoxDecoration(
                      image:DecorationImage(image: AssetImage(vector2),fit: BoxFit.contain),
                    ),
                  )),
              Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    height: 194,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage(dashboard),fit: BoxFit.contain),
                    ),
                  ))
            ],
          )),
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companylogo(fb),
                companylogo(google),
                companylogo(cocacola),
                companylogo(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget desktopContainer2(){
    return Container(
      height: 900,
      width: double.infinity,
      color: AppColors.primary,
      child: Column(
        children: [
          Expanded(child:Stack(
            children: [
              Positioned(
                  top:-20,
                  right: -20,
                  child: Container(
                height: 320,
                width: 320,
                decoration: const BoxDecoration(
                  image:DecorationImage(image: AssetImage(vector1),fit: BoxFit.contain),
                ),
              )),
              Positioned(
                  bottom:-20,
                  left: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                      image:DecorationImage(image: AssetImage(vector2),fit: BoxFit.contain),
                    ),
                  )),
              Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    height: 712,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage(dashboard),fit: BoxFit.contain),
                    ),
                  ))
            ],
          )),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companylogo(fb),
                companylogo(google),
                companylogo(cocacola),
                companylogo(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget companylogo(String image){
    return Container(
      width: 160,
      height: 40,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image),fit: BoxFit.contain)
      ),
    );
  }
