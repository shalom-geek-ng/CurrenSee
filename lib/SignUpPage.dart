import 'package:curren_see/TextFieldClass.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final UserController = TextEditingController();
  final PasswordController = TextEditingController();
  final ReEnterPasswordController = TextEditingController();

  SignUpPage({super.key});

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
              'Create an account with us',
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
            hintText: 'Username:',


          ),

          SizedBox(height: 15,),
          DefaultTextField(
            ObscuredText: true,
            controller: PasswordController,
            hintText: 'Password:',
          ),

          SizedBox(height: 15,),
          DefaultTextField(
            ObscuredText: true,
            controller: ReEnterPasswordController,
            hintText: 'Re-Enter Password:',
          ),


          Expanded(
            child: SizedBox(),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                height: 50,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
