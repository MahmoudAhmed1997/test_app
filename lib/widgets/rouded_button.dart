import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class RoundedButtonSignUp extends StatelessWidget {
  final materialColor;
  final buttonColor;
  final textButton;
  final image;
  final  onPress;
  final imageColor;
  const RoundedButtonSignUp(
      {Key key, this.imageColor,this.materialColor,this.textButton, this.buttonColor, this.image,this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 142,
      child: Material(
        color: materialColor,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey.withOpacity(0.5)),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: MaterialButton(
          onPressed: onPress,
          //color: Color(0xff7676801F),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             Text(
               textButton,
               style: TextStyle(
                   color: buttonColor,
                   fontSize: 16,
                   fontWeight: FontWeight.bold),
             ),
              SizedBox(width: 7.0,),
              Image(image: image,fit: BoxFit.fill,height: 20.0,color: imageColor,),

            ],
          ),
        ),
      ),
    );
  }
}