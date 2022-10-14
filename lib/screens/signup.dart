import 'package:dayloz/screens/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Signup(),
      ),
    );
  }
}

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signUp() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    final _currentHeight = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAl ignment.spaceBetween,
          children: [
            SizedBox(
              height: _currentHeight < 650 ? 20 : 70,
            ),
            Container(
              child: const Text(
                'Sign Up',
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
                  controller: _userNameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.badge_outlined),
                    label: Text('Username', style: TextStyle(fontWeight: FontWeight.w500, color: Color.fromARGB(255, 198, 206, 221),),),
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
                  controller: _emailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail_outline),
                    label: Text('Email ID', style: TextStyle(fontWeight: FontWeight.w500, color: Color.fromARGB(255, 198, 206, 221),),),
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
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock_outlined),
                    label: Text('Password', style: TextStyle(fontWeight: FontWeight.w500, color: Color.fromARGB(255, 198, 206, 221),),),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 206, 207, 207)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff5B67CA)),
                    ),
                    
                  ),
                  
                ),
              ],
            ),
            SizedBox(
              height: _currentHeight < 600 ? 10 : 50,
            ),
            GestureDetector(
              onTap: () {
                print(_userNameController.text);
              },
              child: Container(
                width: 304,
                height: 52,
                alignment: Alignment.center,
                decoration:  BoxDecoration(
                  color: const Color(0xff5B67CA),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Text('Create', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
              ),
            ),
            SizedBox(
              height: _currentHeight < 700 ? 30 : 70,
            ),
            const Text('or with', style: TextStyle(color: Color(0xffC6CEDD)), textAlign: TextAlign.center,),
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
            SizedBox(
              height: _currentHeight < 670 ? 20 : 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Have any account? '),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const SignIn()),
                    );
                  },
                  child: const Text('Sign In',style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
      ),
        ),]
    );
  }
}

