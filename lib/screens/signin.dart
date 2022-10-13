import 'package:dayloz/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
          child: Signin(),
        ),
      ),
    );
  }
}

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          height: 70,
        ),
        Container(
          child: const Text(
            'Sign In',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 91, 103, 202),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.badge_outlined),
                label: Text('Email ID or Username', style: TextStyle(fontWeight: FontWeight.w500, color: Color.fromARGB(255, 198, 206, 221),),),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 206, 207, 207)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff5B67CA)),
                ),
                
              ),
              
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock_outline),
                label: Text('Password', style: TextStyle(fontWeight: FontWeight.w500, color: Color.fromARGB(255, 198, 206, 221),),),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 206, 207, 207)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff5B67CA)),
                ),
                
              ),
              
            ),
            const SizedBox(
              height: 20,
            ),
            
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 304,
            height: 52,
            alignment: Alignment.center,
            decoration:  BoxDecoration(
              color: const Color(0xff5B67CA),
              borderRadius: BorderRadius.circular(15)
            ),
            child: const Text('Login', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
          ),
        ),
        const SizedBox(
          height: 70,
        ),
        const Text('or with', style: TextStyle(color: Color(0xffC6CEDD)), textAlign: TextAlign.center,),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(image: AssetImage('images/Google.png'), width: 42,),
            SizedBox(
              width: 20,
            ),
            Image(image: AssetImage('images/facebook.png'), width: 42,)
          ],
        ),
        const SizedBox(
            height: 40,
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Don't have an account? "),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const SignUp())
                );
              },
              child: const Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ],
    );
  }
}

