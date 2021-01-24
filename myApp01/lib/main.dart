import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); //有状态
  // runApp(MyStatelessWidget(text: "StatelessWidget Example")); //无状态
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: '我要学习flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var s = window.physicalSize / window.devicePixelRatio;
  double btnTop = 100;
  double btnLeft = 100;

  changePosition() {
    var rng = new Random();
    btnTop = rng.nextDouble() * (s.height - 40);
    btnLeft = rng.nextDouble() * (s.width - 100);
    setState(() {});
  }

  getBtn() {
    return AnimatedPositioned(
      width: 100,
      height: 40,
      left: btnLeft,
      top: btnTop,
      duration: Duration(seconds: 1),
      child: RaisedButton(
        child: Text(
          "点我呀",
          style: TextStyle(color: Colors.red),
        ),
        onPressed: changePosition,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    //暗号：初次⻅⾯
    return Scaffold(
      body: Container(
        color: Colors.blue[100],
        child: Stack(
          children: [
            // getBtn(),
            Positioned(
              width: 200,
              height: 80,
              left: btnLeft,
              top: btnTop,
              child: RaisedButton(
                child: Text("你猜", style: TextStyle(fontSize: 28)),
                textColor: Colors.white,
                color: Color.fromRGBO(136, 138, 226, 1),
                onPressed: changePosition,
              ),
            )
          ],
        ),
      ),
    );
  }

  // List<Widget> getChildrens() {
  //   return <Widget>[
  //     Text(
  //       'You have pushed the button this many times:',
  //       style: TextStyle(backgroundColor: Colors.red),
  //     ),
  //     Text(
  //       '$_counter',
  //       style: Theme.of(context).textTheme.headline4,
  //     ),
  //   ];
  // }
}

// 无状态组件
class MyStatelessWidget extends StatelessWidget {
  final String text;
  MyStatelessWidget({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
