import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_in_flutter/utils/colors.dart';
import 'package:web_in_flutter/utils/constants.dart';

class Container1 extends StatelessWidget {
  Container1({super.key});
  late double w;
  late double h;
  @override
  Widget build(BuildContext context) {
    w=MediaQuery.sizeOf(context).width;
    h=MediaQuery.sizeOf(context).height;
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobilecontainer1(),
    desktop:(p0) =>  desktopcontainer1(),
    );
  }
  Widget mobilecontainer1(){
    return Container(
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
        SizedBox(
            height: h/1.2,
            child: Image.asset(illustration1,fit: BoxFit.contain)),
          const SizedBox(height: 5,),
          Text("Track Your Expanses To \nSave Money.",textAlign: TextAlign.center,style: TextStyle(fontSize: w/15,fontWeight: FontWeight.bold,height: 1.2),),
          const SizedBox(height: 5,),
          Text("Helps You To Organize Your income and Expanses.",style: TextStyle(fontSize: 20,color: Colors.grey.shade400),),
          const SizedBox(height: 10,),
          SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton.icon(onPressed:(){},label: const Text("Try Free Demo",style: TextStyle(color: Colors.white),), icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,),style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColors.primary),
                overlayColor:WidgetStateProperty.all(Colors.brown),
                shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8)))),
              ),)),
          const SizedBox(width: 20,),
          Text("-- Web, iOs and Android",style: TextStyle(color: Colors.grey.shade400,fontSize: 20,),),
        ],
      ),
    );
  }
  Widget desktopcontainer1(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w/10,vertical: 20),
      child: Row(
        children: [
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Track Your \nExpanses To \nSave Money.",style: TextStyle(fontSize: w/20,fontWeight: FontWeight.bold,height: 1.2),),
              Text("Helps You To Organize Your income and Expanses.",style: TextStyle(fontSize: 20,color: Colors.grey.shade400),),
              const SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(
                      height: 45,
                      child: ElevatedButton.icon(onPressed:(){},label: const Text("Try Free Demo",style: TextStyle(color: Colors.white),), icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,),style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(AppColors.primary),
                        overlayColor:WidgetStateProperty.all(Colors.brown),
                        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8)))),
                      ),)),
                  const SizedBox(width: 20,),
                  FittedBox(
                      fit: BoxFit.cover,
                      child: Text("-- Web, iOs and Android",style: TextStyle(color: Colors.grey.shade400),))
                ],
              ),
            ],
          )),
          Expanded(child: Image.asset(illustration1,fit: BoxFit.contain),
          )
        ],
      ),
    );
  }
}
