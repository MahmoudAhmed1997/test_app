import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/widgets/bottomAppBarItems.dart';
import 'package:test_app/widgets/card_item.dart';
import 'package:test_app/widgets/statusLine.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff04349B5),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 135,
                    child: RaisedButton(
                      color: Color(0xff3A3F98),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      onPressed: () {
                        print("lkf");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "كافة الأوقات",
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                          ImageIcon(
                            AssetImage("assets/icons/icon.png"),
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  Text('قائمة الطلبات'),
                ],
              ),
            ),
            bottomNavigationBar: BottomAppBarItems(
              index: 2,
            ),
            body: DefaultTabController(
              length: 2,
              child: Column(children: <Widget>[
                Container(
                  constraints: BoxConstraints(maxHeight: 150.0),
                  child: Material(
                    color: Colors.white,
                    child: TabBar(
                      indicatorColor: Color(0xff4349B5),
                      tabs: [
                        Tab(
                          child: Text(
                            "المكتملة",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff4349B5)),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "الحالية",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff383838)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Center(
                          child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Container(
                                height: 1000,
                                width: 370,
                                child: ListView(
                                  children: [
                                    CardItem(),
                                    CardItem(),
                                  ],
                                ),
                              ))),
                      Center(
                        child: Text("Empty"),
                      )
                    ],
                  ),
                ),
              ]),
            )));
  }
}
