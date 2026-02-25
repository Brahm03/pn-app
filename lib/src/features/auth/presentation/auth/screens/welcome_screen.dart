import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pn_app/src/core/consts/colors/app_colors.dart';
import 'package:pn_app/src/core/utils/custom_snack_bar.dart';
import 'package:pn_app/src/features/auth/presentation/cubit/auth_cubit.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.status == AuthStatus.loaded) {
          Navigator.pushReplacementNamed(context, '/profile');
        } else if (state.status == AuthStatus.error) {
          SnackbarService.showError(
            context: context,
            message: 'Xatolik chiqdi',
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text(
              "PN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            leading: BackButton(color: Colors.white),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 78),
                Center(
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 3),
                Center(
                  child: Text(
                    "Sign in to continue your reading journey",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  " Email Address",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 4),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hint: Text("Enter Youre Email Address"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  " Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextFormField(
                  controller: passWordController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hint: Text("Enter Youre Password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Color(0xffE64C19)),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: InkWell(
                    onTap: () {
                      context.read<AuthCubit>().signIn(
                        userInfo: {
                          "identifier": emailController.text,
                          "password": passWordController.text,
                        },
                      );
                    },
                    child: Container(
                      height: 56,
                      width: 342,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffE64C19),
                      ),
                      child: Center(
                        child: state.status == AuthStatus.loading
                            ? CircularProgressIndicator(color: AppColor.white)
                            : Text(
                                "Sign In",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    "--------------------------------- OR CONTION WITH --------------------------------",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 24),
                    Container(
                      height: 48,
                      width: 163,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[700],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(radius: 12),
                          SizedBox(width: 4),
                          Text("Google"),
                          SizedBox(width: 16),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      height: 48,
                      width: 133,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[700],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(radius: 12),
                          SizedBox(width: 4),
                          Text("Apple"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(width: 3),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/sign_up');
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Color(0xffE64C19)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
