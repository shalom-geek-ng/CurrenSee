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
                    text: 'Discover ',
                    style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'Poppins',
                        fontSize: 25
                    )
                ),

                TextSpan(
                    text: 'real-time exchange rates ',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 25
                    )
                ),

                TextSpan(
                    text: 'and ',
                    style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'Poppins',
                        fontSize: 25
                    )
                ),

                TextSpan(
                    text: 'stay up-to-date with global currency trends.',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 25
                    )
                ),


              ]
          ),
          textAlign: TextAlign.center,
        )


    );
  }
}
