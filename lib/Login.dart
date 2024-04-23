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
              Container(

                height: double.infinity,
                alignment: Alignment(0.0, 0.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'images/currency.png'

                        ),
                        fit: BoxFit.cover
                    )
                ),
                child:

                Text('Effortlessly convert currencies from around the globe with just a swipe.', textAlign: TextAlign.center, style: TextStyle(
                    color: Colors.white, fontSize: 35,
                ),),
              ),

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
                        children: [

                          Text('Sign in ', style: TextStyle(
                            color: Colors.white
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
