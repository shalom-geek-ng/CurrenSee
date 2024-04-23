import 'package:curren_see/Page1.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Login extends StatelessWidget {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        fit: StackFit.expand,
        children: [
          PageView(
            controller: _controller,
            children: [
              FirstPage(),
              Container(
                color: Colors.purple,
              ),

              Container(
                color: Colors.yellow,
              ),
            ],

          ),

          Container(
            alignment: Alignment(0,0.75),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      GestureDetector(

                          child: Icon(Icons.arrow_back,
                            color: Colors.green,),
                      onTap: (){
                            _controller.previousPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                      }),

                      SmoothPageIndicator(

                          controller: _controller,
                          count: 3,
                          effect: ExpandingDotsEffect(
                            dotColor: Colors.white,
                            activeDotColor: Colors.green

                          ),
                      ),

                      GestureDetector(
                          child: Icon(Icons.arrow_forward,
                            color: Colors.green,),
                        onTap: (){
                            _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                        },
                      )
                    ],
                  ),
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center
                    ,children: [

                    Text('Log in', style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Icon(Icons.arrow_forward, color: Colors.green,)
                  ],
                  ),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                  ),

                ),

                Container(


                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center
                      ,children: [

                          Text('Sign in ', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20
                          ),),
                          Icon(Icons.arrow_forward, color: Colors.white,)
                        ],



                                        ),

                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.green,
                  ),
                )
              ],
            ),
          ),




        ],
      ),
    );

  }
}
