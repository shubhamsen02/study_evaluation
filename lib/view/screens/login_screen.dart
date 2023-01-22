import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      // backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.all(0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mobile_friendly,
                      color: Colors.grey[600],
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    labelText: 'Mobile',
                    hintText: 'Enter Mobile Number'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 1.0,
                right: 1.0,
                top: 30,
              ),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey[600],
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    labelText: 'Password',
                    hintText: 'Enter Password'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                width: 345,
                decoration: BoxDecoration(
                    color: Color(0xFF009DDC),
                    borderRadius: BorderRadius.circular(25)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 18.0),
                    shape: StadiumBorder(),
                  ),
                  child: const Text('Submit'),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const HomeScreen()),
                    // );
                  },
                )),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const ForgetPasswordScreen()),
                // );
              },
              child: const Text(
                'Forgot Password',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
