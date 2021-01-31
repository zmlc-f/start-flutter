import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstPages extends StatefulWidget {
  @override
  _FirstPagesState createState() => _FirstPagesState();
}

class _FirstPagesState extends State<FirstPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Center(
        //   child: Image.network(
        // "https://www.baidu.com/img/flexible/logo/pc/result@2.png",
        // width: 100,)

        // child: Image.asset(
        //   "assets/images/1.png",
        //   width: 100,
        //   height: 100,
        //   fit: BoxFit.contain,
        // ),

        // child: Container(
        //   width: 100,
        //   height: 100,
        //   decoration: ShapeDecoration(
        //       image: DecorationImage(image: AssetImage("assets/images/1.png")),
        //       shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadiusDirectional.circular(50))),
        // ),

        // child: ClipRRect(
        //   child: Image.asset(
        //     "assets/images/1.png",
        //     width: 100,
        //     height: 100,
        //   ),
        //   borderRadius: BorderRadius.circular(50),
        // ),

        child: ClipOval(
          child: Image.asset(
            "assets/images/1.png",
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
