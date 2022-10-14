import 'package:dayloz/screens/signin.dart';
import 'package:dayloz/screens/signup.dart';
import 'package:flutter/material.dart';

class SignupLogin extends StatelessWidget {
  const SignupLogin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginSignup(),
    );
  }
}

class LoginSignup extends StatefulWidget {
  const LoginSignup({ Key? key }) : super(key: key);

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  @override
  Widget build(BuildContext context) {
    final currentHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: currentHeight < 820 ? const EdgeInsets.fromLTRB(0, 60, 0, 60) : const EdgeInsets.fromLTRB(0, 100, 0, 100),
            height: currentHeight < 820 ? 270: 294,
            child: const Image(image: AssetImage('images/vector-1.png')),
          ),

          Container(
            margin: currentHeight < 710 ? const EdgeInsets.fromLTRB(0, 0, 0, 50) : const EdgeInsets.fromLTRB(0, 0, 0, 100),
            child: Column(
              children: const [
                Text('Dailoz', style: TextStyle(fontSize: 35, color: Color.fromARGB(255, 91, 103, 202)),),
                SizedBox(
                  height: 10,
                ),
                Text('Plan what you will do to be more organized for today, tomorrow and beyond', style: TextStyle(fontWeight: FontWeight.w500, ),textAlign: TextAlign.center,)
              ],
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => const SignIn())
              );
            },
            child: Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                alignment: Alignment.center,
                width: 300,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 91, 103, 202),
                ),
                child: const Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUp()) 
                );
            },
            child: Container(
                alignment: Alignment.center,
                width: 300,
                height: 52,
                child: const Text('Sign Up', style: TextStyle(color:Color.fromARGB(255, 91, 103, 202), fontWeight: FontWeight.bold, fontSize: 18),),
            ),
          ),
        ],
      ),
    );
  }
}