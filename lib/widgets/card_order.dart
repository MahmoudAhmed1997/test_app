import 'package:flutter/material.dart';

class CardOrder extends StatelessWidget {
  const CardOrder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0), color: Colors.white),
        width: 327,
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 23.0),
                  child: Column(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        child: ImageIcon(
                          AssetImage("assets/icons/notification.png"),
                          color: Color(0xffA4B0BE),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("الطلب ٢٤٠٠٤| ",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xff110028))),
                          Text(
                            "جاري التجهيز",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff4349B5)),
                          ),
                        ],
                      ),
                      Text(
                        "تجهيز الشحنة و تغليفها قبل التوصيل",
                        style:
                        TextStyle(fontSize: 12, color: Color(0xffA4B0BE)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: Column(
                children: [
                  Text(
                    "8:30",
                    style: TextStyle(color: Color(0xff4349B5), fontSize: 14),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
