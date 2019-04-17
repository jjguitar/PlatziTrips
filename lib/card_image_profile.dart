import 'package:flutter/material.dart';
import 'package:flutter_app/circle_button.dart';
import 'floating_button_profile.dart';
import 'review_profile.dart';

class CardImageProfile extends StatelessWidget{

  String pathImage = "assets/img/beach.jpeg";
  String descriptionPlace = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  CardImageProfile(this.pathImage);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      height: 210.0,
      width: 340.0,
      margin: EdgeInsets.only(
          top: 17.0,
          left: 20.0,
          right: 20.0
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow> [
            BoxShadow (
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0)
            )
          ]
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0
      ),
      child: new Text(
        descriptionPlace,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)
        ),
      ),
    );

    final textDescription = InkWell(
      child: Container(
        margin: EdgeInsets.only(
            top: 0.0,
            left: 20.0,
            right: 20.0
        ),
        height: 95.0,
        width: 250.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp
            ),
            boxShadow: <BoxShadow> [
              BoxShadow (
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0)
              )
            ]
        ),

        child: ReviewProfile()
      ),
    );

    void onPressedButton() {

    }

    return Container(
      height: 290.0,
      child: Stack(
        alignment: Alignment(0.0, -1.0),
        children: <Widget>[
          card,
          Container(
            alignment: Alignment(0.0, 0.8),
            child: textDescription,
          ),
          Container(
            alignment: Alignment(0.5, 1.0),
            child: FloatingButtonProfile(),
          ),
        ],
      ),
    );
  }

}