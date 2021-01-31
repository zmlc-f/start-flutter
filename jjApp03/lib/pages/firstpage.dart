import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstPages extends StatefulWidget {
  @override
  _FirstPagesState createState() => _FirstPagesState();
}

class _FirstPagesState extends State<FirstPages>
    with SingleTickerProviderStateMixin {
  List<String> tabTexts = [
    "推荐",
    "关注",
    "Javascript",
    "IOS",
    "CSS",
    "React",
    "Vue",
    "Webpack",
    "Flutter"
  ];
  TabController _tabController;
  getTabs() {
    List<Tab> results = [];
    for (int i = 0; i < tabTexts.length; i++) {
      results.add(Tab(
        text: tabTexts[i],
      ));
    }
    return results;
  }

  getView() {
    List<Widget> results = [];
    // 暗号：面向工资编程
    for (int i = 0; i < tabTexts.length; i++) {
      if (i == 0) {
        results.add(ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Container(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (c, i) {
                      return Container(
                        child: Text("$i"),
                        width: 100,
                      );
                    },
                  ));
            } else {
              return Text("$index");
            }
          },
        ));
        // results.add(ListView(
        //   children: [
        //     RaisedButton(
        //       onPressed: () {},
        //       child: Text("button"),
        //     ),
        //     Image.asset(
        //       "assets/images/1.png",
        //       width: 100,
        //       height: 100,
        //     ),
        //     Container(
        //       height: 100,
        //       child: ListView(
        //         scrollDirection: Axis.horizontal,
        //         children: [
        //           RaisedButton(
        //             onPressed: () {},
        //             child: Text("1"),
        //           ),
        //           RaisedButton(
        //             onPressed: () {},
        //             child: Text("2"),
        //           ),
        //           RaisedButton(
        //             onPressed: () {},
        //             child: Text("3"),
        //           ),
        //           RaisedButton(
        //             onPressed: () {},
        //             child: Text("4"),
        //           ),
        //           RaisedButton(
        //             onPressed: () {},
        //             child: Text("5"),
        //           ),
        //           RaisedButton(
        //             onPressed: () {},
        //             child: Text("6"),
        //           ),
        //         ],
        //       ),
        //     )
        //   ],
        // ));
      } else {
        results.add(Center(
          child: Text(tabTexts[i]),
        ));
      }
    }
    return results;
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabTexts.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Container(
                child: FlatButton(
                  color: Colors.red,
                  child: Text(
                    "搜素",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: () {},
                ),
                color: Colors.grey,
              ),
            ),
            FlatButton.icon(
              icon: Icon(Icons.settings),
              label: Text("标签"),
              onPressed: () {},
            )
          ],
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: getTabs(),
          isScrollable: true,
        ),
      ),
      body: TabBarView(
        children: getView(),
        controller: _tabController,
      ),
    );
  }
}
