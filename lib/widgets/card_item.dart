import 'package:flutter/material.dart';
import 'package:test_app/widgets/statusLine.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 347,
      width: 370,
      child: Card(
          margin: EdgeInsets.symmetric(vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Container(
                height: 41,
                color: Color(0xffF9F9F9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ImageIcon(AssetImage("assets/icons/arrow_right.png")),
                        Text(
                          "الطلب #120025 ",
                          style:
                          TextStyle(fontSize: 16, color: Color(0xff1E1F20)),
                        ),
                      ],
                    ),
                    Container(
                      height: 41,
                      width: 126,
                      child: RaisedButton(
                          child: Text(
                            "انتهى",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          padding: EdgeInsets.all(0),
                          color: Color(0xff3393CF),
                          onPressed: () {
                            null;
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(15.0),
                                  topLeft: Radius.circular(12.0)))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 327,
                  child: Row(children: [
                    Container(
                        child: Image(
                          image: AssetImage("assets/icons/status_line.png"),
                          color: Color(0xff4349B5),
                        )),
                    Container(child: StatusLine())
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 51,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffF9F9F9)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "المدينة المنورة ",
                        style:
                        TextStyle(fontSize: 15, color: Color(0xff404386)),
                      ),
                      Container(
                        height: 31,width: 31,
                        decoration: BoxDecoration(color: Color(0xffF1F1F1),borderRadius: BorderRadius.circular(12)),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Color(0xffA4B0BE),
                          size: 18,
                        ),
                      ),
                      Text(
                        "مكة المكرمة",
                        style:
                        TextStyle(fontSize: 15, color: Color(0xff404386)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,


                      children: [
                        Row(
                          children: [
                            ImageIcon(AssetImage("assets/icons/time.png"),color: Color(0xff4349B5),),
                            Text("19:00 12/5/2020")
                          ],
                        ),
                        SizedBox(height: 5.0,),
                        Row(
                          children: [
                            ImageIcon(AssetImage("assets/icons/box_2.png"),color: Color(0xff4349B5),),

                            Text("بلاستيك، أجهزة كهربائية")
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ImageIcon(AssetImage("assets/icons/packaging.png"),color: Color(0xff4349B5),),
                            Text(" (52) كرتون")
                          ],
                        ),
                        SizedBox(height: 5.0,),

                        Row(
                          children: [
                            ImageIcon(AssetImage("assets/icons/scale.png"),color: Color(0xff4349B5),),

                            Text(" (521) كغم")
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 18.0, left: 21, right: 21, bottom: 2),
                child: Row(
                  children: List.generate(
                      150 ~/ 2,
                          (index) => Expanded(
                        child: Container(
                          color: index % 2 == 0
                              ? Colors.transparent
                              : Colors.grey,
                          height: 1.5,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "اجمالي تكلفة الشحن",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "  500.0 رس",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 5.0, left: 21, right: 21, bottom: 2),
                child: Row(
                  children: List.generate(
                      150 ~/ 2,
                          (index) => Expanded(
                        child: Container(
                          color: index % 2 == 0
                              ? Colors.transparent
                              : Colors.grey,
                          height: 1.5,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffFF4267),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "تقييم الطلبية",
                      style: TextStyle(color: Color(0xffFF4267), fontSize: 16),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
