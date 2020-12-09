import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/widgets/bottomAppBarItems.dart';
import 'package:test_app/widgets/card_order.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        bottomNavigationBar: BottomAppBarItems(index: 1,),
        body: Stack(
          fit: StackFit.expand,
          overflow: Overflow.visible,
          children: [
          Container(
          alignment: Alignment.topCenter,
          width: 146,
          height: 244,
          child: Image(
            image: AssetImage("assets/images/Mask Group.png",),

          ),
        ),
           SingleChildScrollView(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Container(
                          width: double.infinity,
                          height: 320,
                          color: Color(0xff4349B5),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            "مرحبا بك, محمد الخالدي ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                                "المنزل المنطقة الحمراء, الرياض ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14)),
                                            Stack(
                                              children: [
                                                Container(
                                                  child: ImageIcon(
                                                    AssetImage(
                                                        "assets/icons/rectangle.png"),
                                                   color: Color(0xff32367F),

                                                  ),
                                                ),
                                                ImageIcon(
                                                  AssetImage(
                                                      "assets/icons/arrow_down.png"),
                                                  color: Colors.white
                                                 ,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Image(
                                      image: AssetImage(
                                          "assets/images/image_person.png"),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 24.0, right: 24.0,top: 12.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff6265D0),
                                    ),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 15.0, horizontal: 15),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                          hintStyle: TextStyle(
                                              color: Color(0xffE8E8E8),
                                              fontSize: 15),
                                          hintText: "أدخل رقم الطلب...",
                                          suffixIcon:
                                          ImageIcon(AssetImage("assets/icons/search.png"),color: Colors.white,),
                                          fillColor: Colors.white60),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0,),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 68.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Color(0xff4349B5)),
                            width: 327,
                            height: 90,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(
                                  image: AssetImage("assets/images/box.png"),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "الطلب ٢٣٠٠٠٠#",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "الطلب جاري التجهيز للشحن قريباً",
                                          style: TextStyle(
                                              fontSize: 11, color: Colors.white),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Image(
                                  image: AssetImage("assets/images/stars.png"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      CardOrder(),
                      CardOrder(),
                    ],
                  ),
                ),
              ),

            Positioned(
              top: 150,
              left: 44,
              right: 44,
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  width: 327,
                  height: 220,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 24.0, top: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "اشحن مسلتزماتك",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Text(
                            "حدد المدينة المرسل اليها, لاحتساب التكلفة الأولية",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff404386)),
                          ),
                          Container(
                            height: 46,
                            width: 274,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffF9F9F9),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 15.0, horizontal: 15),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  hintStyle: TextStyle(
                                      color: Color(0xffA4B0BE), fontSize: 15),
                                  hintText: "اختر المدينة",
                                  suffixIcon:
                                  ImageIcon(AssetImage("assets/icons/sniper.png"),color: Color(0xffA4B0BE),),

                                  fillColor: Colors.white60),
                            ),
                          ),
                          SizedBox(
                            height: 17.0,
                          ),
                          Container(
                            height: 46,
                            width: 274,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xff3393CF),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 15.0, horizontal: 15),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  hintStyle: TextStyle(
                                      color: Color(0xffFFFFFF), fontSize: 17),
                                  hintText: "ابدأ الشحن",
                                  suffixIcon: Icon(
                                    Icons.arrow_back_sharp,
                                    size: 15,
                                    color: Color(0xffFFFFFF),
                                  ),
                                  fillColor: Colors.white60),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

