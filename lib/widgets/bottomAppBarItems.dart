import 'package:flutter/material.dart';
import 'package:test_app/screens/account_screen.dart';
import 'package:test_app/screens/login_screen.dart';
import 'package:test_app/screens/orders_screen.dart';

class BottomAppBarItems extends StatefulWidget {
  final index;
  final String id;

  BottomAppBarItems({this.index, this.id});

  @override
  _BottomAppBarItemsState createState() => _BottomAppBarItemsState();
}

class _BottomAppBarItemsState extends State<BottomAppBarItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 80,
      child: BottomAppBar(
        elevation: 0.0,
        child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AccountScreen()));
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ImageIcon(
                        AssetImage("assets/icons/user.png"),
                        color: widget.index == 1
                            ? Color(0xff4349B5)
                            : Color(0xffA4B0BE),
                        size: 25,
                      ),
                    ),
                    Text(
                      "الحساب",
                      style: TextStyle(                      color: widget.index == 1 ? Color(0xff4349B5) : Color(0xffA4B0BE),
                           fontSize: 11),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OrdersScreen()));
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ImageIcon(
                        AssetImage("assets/icons/orders_bus.png"),
                        color: widget.index == 2
                            ? Color(0xff4349B5)
                            : Color(0xffA4B0BE),
                        size: 25,
                      ),
                    ),
                    Text(
                      "الطلبات",
                      style: TextStyle(                      color: widget.index == 2 ? Color(0xff4349B5) : Color(0xffA4B0BE),

                          fontSize: 11),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ImageIcon(
                        AssetImage("assets/icons/home_icon.png"),
                        color: widget.index == 3
                            ? Color(0xff4349B5)
                            : Color(0xffA4B0BE),
                        size: 25,
                      ),
                    ),
                    Text(
                      "الرئيسية",
                      style: TextStyle(
                          color: widget.index == 3
                              ? Color(0xff4349B5)
                              : Color(0xffA4B0BE),
                          fontSize: 11),
                    )
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
