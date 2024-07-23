import 'package:flutter/material.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => RegisterpageState();
}

class RegisterpageState extends State<Registerpage> {
  void _login() {
    print("object");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Instagram",
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Sign up to see photos and videos from friends",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 150, 149, 149)),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  _login;
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image(
                      //   image: AssetImage("../images/google.jpg"),
                      //   height: 30.0,
                      //   width: 30,
                      // ),
                      Padding(
                        padding: EdgeInsets.only(left: 24, right: 8),
                        child: Text(
                          'Login with Facebook',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "OR",
              style: TextStyle(color: Color.fromARGB(255, 150, 149, 149)),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              color: Colors.white,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: 'Full Name',
                      // prefixIcon: Icon(Icons.person),
                    ),
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return 'Please enter your email';
                    //   }
                    //   return null;
                    // },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: 'Email',
                      // prefixIcon: Icon(Icons.mail),
                    ),
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return 'Please enter your email';
                    //   }
                    //   return null;
                    // },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: 'Password',
                      // prefixIcon: Icon(Icons.lock),
                    ),
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return 'Please enter your email';
                    //   }
                    //   return null;
                    // },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: 'Confirm Password',
                      // prefixIcon: Icon(Icons.lock),
                    ),
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return 'Please enter your email';
                    //   }
                    //   return null;
                    // },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 500,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: _login,
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 30, 200, 230),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "By signing up you agree to our Terms, Data Policy and Cookies Policy.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color.fromARGB(255, 150, 149, 149)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Have an account?",
                          style: TextStyle(fontSize: 15)),
                      TextButton(
                        onPressed: _login,
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            decorationColor: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
