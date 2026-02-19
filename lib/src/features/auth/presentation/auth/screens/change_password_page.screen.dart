import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Change Password", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),),
        backgroundColor: Colors.black,
        leading: BackButton(color: Colors.white,),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 97,
                width: 357,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffE64C19).withAlpha(63),
                ),
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Secure youre account", style: TextStyle(color: Colors.white, fontSize: 14, ),),
                    SizedBox(height: 4,),
                    Text("Your password must be at least 8 characters long", style: TextStyle(color: Colors.grey[600], fontSize: 12, ),),
                    SizedBox(height: 3,),
                     Text("and include a mix of letters and numbers", style: TextStyle(color: Colors.grey[600], fontSize: 12, ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 32,),
            Text("  Current Password", style: TextStyle(color: Colors.white, fontSize: 14, ),),
            SizedBox(height: 4,),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                hint: Text("Enter Youre Current Password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 16,),
            Text("New Password", style: TextStyle(color: Colors.white, fontSize: 14, ),),
            SizedBox(height: 4,),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                hint: Text("Enter Youre New Password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 16,),
            Text("Confirm New Password", style: TextStyle(color: Colors.white, fontSize: 14, ),),
            SizedBox(height: 4,),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                hint: Text("Enter Youre Confirm New Password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 130,),
            Center(
              child: Container(
                height: 56,
                width: 342,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffE64C19),
                ),
                
                child: Center(
                  child: Text(
                    "Update Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}