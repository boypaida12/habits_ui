// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool keepSignedIn = true;
  bool emailMe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(255, 243, 233, 1),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image: AssetImage('assets/images/create_account.png')),
              Text(
                'create your account'.toUpperCase(),
                style: TextStyle(
                  fontFamily: 'Itim',
                  decoration: TextDecoration.none,
                  color: Color.fromARGB(255, 87, 51, 83),
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Mira Passaquindici',
                            prefixIcon: Icon(Icons.person_outline),
                            prefixIconColor: Color.fromARGB(255, 254, 169, 0),
                            hintStyle: TextStyle(
                              color: Color.fromARGB(255, 254, 169, 0),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide.none,
                            )),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email_outlined),
                            prefixIconColor: Colors.grey,
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide.none,
                            )),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextField(
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.lock_outline),
                            prefixIconColor: Colors.grey,
                            suffixIcon: Row(
                              mainAxisSize:
                                  MainAxisSize.min, // Ensures minimal width
                              children: [
                                Text(
                                  'Show',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(16),
                            )),
                      ),
                      CheckboxListTile(
                        title: Text(
                          'Keep me signed in',
                          style: TextStyle(
                            letterSpacing: -1.0,
                          ),
                        ),
                        checkColor: Color.fromARGB(255, 87, 51, 83),
                        fillColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 254, 169, 0)),
                        value: keepSignedIn,
                        onChanged: (newValue) =>
                            setState(() => keepSignedIn = newValue!),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      // SizedBox(height: 0,),
                      CheckboxListTile(
                        value: emailMe,
                        title: Text(
                          'Email me about special pricing and more',
                          style: TextStyle(
                            letterSpacing: -1.0,
                          ),
                        ),
                        checkColor: Color.fromARGB(255, 87, 51, 83),
                        fillColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 254, 169, 0)),
                        onChanged: (newValue) =>
                            setState(() => emailMe = newValue!),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromARGB(255, 254, 169, 0)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  elevation: MaterialStateProperty.all(0),
                                  padding: MaterialStateProperty.all<
                                          EdgeInsetsGeometry>(
                                      EdgeInsets.symmetric(vertical: 20))),
                              onPressed: () {},
                              child: Text(
                                'Create Account',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 87, 51, 83),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          children: const [
                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Or sign in with',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  elevation: MaterialStateProperty.all(0),
                                  padding: MaterialStateProperty.all<
                                          EdgeInsetsGeometry>(
                                      EdgeInsets.symmetric(vertical: 20))),
                              onPressed: () {},
                              child: Text(
                                'Google',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 87, 51, 83),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  elevation: MaterialStateProperty.all(0),
                                  padding: MaterialStateProperty.all<
                                          EdgeInsetsGeometry>(
                                      EdgeInsets.symmetric(vertical: 20))),
                              onPressed: () {},
                              child: Text(
                                'Facebook',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 87, 51, 83),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          TextButton(
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<
                                        EdgeInsetsGeometry>(
                                    EdgeInsets.symmetric(vertical: 16))),
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/login');
                            },
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 87, 51, 83),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
