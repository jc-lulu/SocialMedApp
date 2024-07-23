import 'package:final_project/pages.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
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
            Container(
              width: 350,
              color: Colors.white,
              // color: Colors.green,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.mail),
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
                      prefixIcon: Icon(Icons.lock),
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
                        'Login',
                        style: TextStyle(fontSize: 15, color: Colors.white),
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
                  SizedBox(
                    width: 500.0,
                    height: 40.0,
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
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?",
                          style: TextStyle(fontSize: 15)),
                      TextButton(
                        onPressed: () {
                          final result = Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Registerpage(),
                            ),
                          );
                          // ignore: unrelated_type_equality_checks
                          if (result == true) {}
                        },
                        child: const Text(
                          'Sign Up',
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
