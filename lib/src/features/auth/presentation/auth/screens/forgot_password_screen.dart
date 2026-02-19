import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "PN Book",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        leading: BackButton(color: Colors.white),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 48,
              width: 57,
              decoration: BoxDecoration(
                color: Color(0xffE64c19).withAlpha(70),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(CupertinoIcons.lock_circle, color: Color(0xffE64c19)),
            ),
            SizedBox(height: 32),
            Text(
              "Forgot Password?",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "No worries! Enter the email address",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            Text(
              "asscoint with youre account and we'll send",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            Text(
              "you a link tor resent youre password",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 30),
            Text("Email", style: TextStyle(fontSize: 16, color: Colors.white)),
            SizedBox(height: 7),
            TextFormField(
              decoration: InputDecoration(
                hintText: "youre@gmail.com",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                height: 58,
                width: 342,
                decoration: BoxDecoration(
                  color: Color(0xffE64C19),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    "Send Reset Link",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 159),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Remember youre password?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 4),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffE64C19),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
