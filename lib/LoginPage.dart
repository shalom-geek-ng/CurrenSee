import 'package:curren_see/TextFieldClass.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final UserController = TextEditingController();
  final PasswordController = TextEditingController();

  LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Text(
                'Continue with your account',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Text(
                'Continue with Google or use email & password',
                style: TextStyle(color: Colors.green),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              child: Image(
                image: AssetImage('images/google.png'),
                width: 50,
                height: 50,
              ),
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

            SizedBox(height: 15,),
            DefaultTextField(
              ObscuredText: false,
              controller: UserController,
              hintText: 'UserName',


            ),

            SizedBox(height: 15,),
            DefaultTextField(
              ObscuredText: true,
              controller: PasswordController,
              hintText: 'Password',
            ),


            Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                height: 50,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),

    );
  }
}
