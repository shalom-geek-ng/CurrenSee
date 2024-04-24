import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [



                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: Text('Continue with your account',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                  child: Text('Continue with Google or use email & password', style: TextStyle(color: Colors.green),),
                ),
            
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Image(image: AssetImage('images/google.png', ), width: 50, height: 50,),
              ),

            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      color: Colors.green,
                      thickness: 2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: Text('OR'),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      color: Colors.green,
                      thickness: 2,
                    ),
                  ),
                ),
              ],
            ),

              Expanded(
                child: Column(
                  children: [
                    // Expanded(
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10)
                              ),
                                focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                                    borderRadius: BorderRadius.circular(10)
                          )

                            ),
                          ),
                        ),
                      ),

                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green),
                                  borderRadius: BorderRadius.circular(10)
                              )

                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: Container(
                        child: Center(
                          child: Text('Log in', style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green,
                        ),
                        height: 70,
                      ),
                    )
                    // ),
                  ],
                ),

              ),






              ],


            ),
      )
    );
  }
}
