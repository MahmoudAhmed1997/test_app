import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_app/screens/orders_screen.dart';
import 'package:test_app/widgets/rouded_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _textEditingController;
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: Stack(children: [
        Container(
          width: 146,
          height: 244,
          child: Image(
            image: AssetImage("assets/images/Mask Group.png"),
          ),
        ),
        SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 82.0, right: 40),
                  child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(
                      //   height: 80,
                      // ),
                      Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color(0xff1E1F20),
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        "مرحباً مرة أخرى في ايزي باس",
                        style: TextStyle(
                          //   fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff404386),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        "البريد الالكتروني",
                        style: TextStyle(
                          //   fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Color(0xff787979),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xffFFFFFF)),
                        width: 335,
                        height: 50,
                        child: TextFormField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Icon(
                                  Icons.done,
                                  color: Color(0xff4349B5),
                                ),
                              ),
                              hintStyle:
                                  TextStyle(fontSize: 15, color: Colors.black),
                              hintText: 'name@gmail.com',
                              fillColor: Color(0xff000000),
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide.none)
                              // icon: Icon(Icons.email),
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, top: 17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "كلمة المرور",
                              style: TextStyle(
                                //   fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Color(0xff787979),
                              ),
                            ),
                            Text(
                              "نسيت كلمة المرور؟",
                              style: TextStyle(
                                //   fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Color(0xff4349B5),

                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xffFFFFFF)),
                        width: 335,
                        height: 50,
                        child: TextFormField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Icon(
                                  Icons.remove_red_eye_outlined,
                                
                                ),
                              ),
                              hintStyle: TextStyle(
                                fontSize: 18,
                              ),
                              hintText: '••••••',
                              fillColor: Color(0x000000),
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide.none)
                              // icon: Icon(Icons.email),

                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 31.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Row(
                    children: [
                      Container(
                        height: 58,
                        width: 58,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xff1E1F20)),
                        child: FlatButton(
                          child: ImageIcon(
                            AssetImage('assets/icons/icon_phone.png'),
                            color: Colors.white,
                          ),
                          onPressed: () {
                            print("••••••");
                          },
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Expanded(
                        child: Container(
                          height: 58,
                          width: 270,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(12),
                                  topRight: Radius.circular(12.0)),
                              color: Color(0xff4349B5)),
                          child: FlatButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "تسجيل الدخول",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF), fontSize: 18),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            onPressed: () {
                              print("mmm");
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Center(
                    child: Text(
                      "أو قم بالدخول عبر",
                      style: TextStyle(color: Color(0xff787979), fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  height: 29,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RoundedButtonSignUp(
                      image: AssetImage(
                        "assets/icons/icon_apple.png",
                      ),
                      materialColor: Color(0xff1E1F20),
                      buttonColor: Colors.white,
                      textButton: "via Apple",
                      imageColor: Colors.white,
                      onPress: () {},
                      // imageColor: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    RoundedButtonSignUp(
                      image: AssetImage("assets/images/google_icon.png"),
                      textButton: "via Google",
                      materialColor: Color(0xffF1F1F1),
                      buttonColor: Colors.black,
                      // onPress:  _login
                    ),
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(50),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                            text: 'مستخدم جديد؟',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' التسجيل الآن',
                                style: TextStyle(
                                    color: Colors.blueAccent, fontSize: 18),
                              )
                            ]),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
