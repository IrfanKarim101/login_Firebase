import 'package:flutter/material.dart';
import 'package:login_page/components/frosted_glass.dart';
import 'package:login_page/components/my_textfield.dart';
import 'package:login_page/components/my_button.dart';
import 'package:login_page/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Center(
          child: SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/images/blob.jpg'),
                    fit: BoxFit.cover),
              ),
              alignment: Alignment.center,
              child:  FrostedGlass(
                height: 2500.0,
                width: 2000.0,
                child: SignInPage()
              ),
            ),
          ),
        ));
  }

}

class SignInPage extends StatelessWidget {
    
  SignInPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Icon(
            Icons.key_sharp,
            size: 100,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Welcome back, Bro!! ',
            style: TextStyle(
                color: Colors.grey[200],
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          MyTextfield(
            hintText: 'Username or Email',
            controller: usernameController,
            obsecureText: false,
          ),
          MyTextfield(
            hintText: 'Password',
            controller: passwordController,
            obsecureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password!',
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          MyButton(
            onTap: () {
              //0000000000000000000000000000000000000000000
            },
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 2,
            indent: 9,
            endIndent: 9,
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Or continue with...'),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SquareTile(imagePath: 'lib/photos/google.png'),
              SquareTile(imagePath: 'lib/photos/apple.png')
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Text('Not a Member? '),
                GestureDetector(
                  onTap: () {
                    //000000000000000000000000000000000000
                  },
                  child: const Text(
                    'Register Now!',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
