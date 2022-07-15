import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() {
  runApp(const MaterialApp(
    home: Login(),
    debugShowCheckedModeBanner: false,
  ));
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        title: Container(
          width: 80,
          height: 50,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage(
              'assets/images/logo.png',
            ),
          )),
        ),
        backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
        leading: SizedBox(
          // Need to ask TextButton Width
          width: 150,

          child: TextButton(
              // style: TextButton.styleFrom(backgroundColor: Colors.white),
              child: Text(
                'Back',
                style: TextStyle(
                    color: Color.fromRGBO(72, 168, 250, 1.0), fontSize: 16),
              ),
              onPressed: () {
                print('Back Pressed');
              }),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print('Clicked Action Button');
              },
              icon: Icon(
                Icons.refresh_outlined,
                size: 30,
              ))
        ],
      ),
      body: Container(
        color: Color.fromRGBO(0, 0, 0, 1.0),
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Create account',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
                decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Name",
              filled: true,
              fillColor: Colors.white,
            )),
            SizedBox(
              height: 20,
            ),
            TextField(
                decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Your email address",
              filled: true,
              fillColor: Colors.white,
            )),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Create a password",
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'i',
                  style: TextStyle(
                    color: Color.fromRGBO(18, 120, 175, 1.0),
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Passwords must be at least 6 characters.',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                  child: Checkbox(
                    value: true,
                    activeColor: Color(0xFFFFFFFF),
                    onChanged: (value) {
                      //value may be true or false
                    },
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Show Password',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(18, 120, 175, 1.0)),
                    child: Text('Create your Amazon account', style: TextStyle(fontSize: 16),))),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: RichText(
                text: TextSpan(
                    text: "By creating an account, you agree to the ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                    children: [
                      TextSpan(
                        text: "Prime Video Terms of Use and license agreements",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            //redirect Terms of Use
                            print(
                                "Clicked Prime Video Terms of Use and license agreements");
                          },
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                          text: " which can be found on the Amazon website.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          )),
                    ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              "Already have an account?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            )),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign-In now',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(66, 81, 101, 1.0)),
                )),
            SizedBox(height: 80),
            Center(
              child: Text(
                "© 1996-2021, Amazon.com, Inc. or its affiliates",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
