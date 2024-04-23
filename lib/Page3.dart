import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

        height: double.infinity,
        alignment: Alignment(0.0, 0.0),
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'images/currency3.png'

                ),
                fit: BoxFit.cover
            )
        ),
        child:

        Text.rich(
          TextSpan(
              children: [
                TextSpan(
                    text: 'Experience seamless currency conversions ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30
                    )
                ),
                TextSpan(
                    text: 'with intuitive swipe gestures, ',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 30
                    )
                ),

                TextSpan(
                    text: 'making finance management a breeze. ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30
                    )
                ),




              ]
          ),
          textAlign: TextAlign.center,
        )


    );
  }
}
