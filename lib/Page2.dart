import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

        height: double.infinity,
        alignment: Alignment(0.0, 0.0),
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'images/currency2.png'

                ),
                fit: BoxFit.cover
            )
        ),
        child:

        Text.rich(
          TextSpan(
              children: [
                TextSpan(
                    text: 'Effortlessly ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30
                    )
                ),
                TextSpan(
                    text: 'convert ',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 30
                    )
                ),

                TextSpan(
                    text: 'currencies from around the globe with just a ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30
                    )
                ),

                TextSpan(
                    text: 'click.',
                    style: TextStyle(
                        color: Colors.green,
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
