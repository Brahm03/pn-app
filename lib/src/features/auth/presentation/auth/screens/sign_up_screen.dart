import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pn_app/src/core/utils/custom_snack_bar.dart';
import 'package:pn_app/src/features/auth/presentation/cubit/auth_cubit.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: BackButton(color: Colors.white),
        title: Text(
          "Create an account",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Center(
                  child: Container(
                    height: 48,
                    width: 57,
                    decoration: BoxDecoration(
                      color: Color(0xffE64C19).withAlpha(70),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Icon(Icons.book, color: Color(0xffE64C19)),
                  ),
                ),
                SizedBox(height: 32),
                Center(
                  child: Text(
                    "Journey the Library",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    "Enter youre details to start your reading",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 4),
                Center(
                  child: Text(
                    "journey",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 40),
                Text("Name", style: TextStyle(color: Colors.white)),
                SizedBox(height: 4),
                TextFormField(
                  controller: userNameController,
                  decoration: InputDecoration(
                    hintText: "Enter Youre Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Text("Email Address", style: TextStyle(color: Colors.white)),
                SizedBox(height: 4),
                TextFormField(
                  controller: emailController,

                  decoration: InputDecoration(
                    hintText: "Enter Youre Email Address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Text("Password", style: TextStyle(color: Colors.white)),
                SizedBox(height: 4),
                TextFormField(
                  controller: passwordController,

                  decoration: InputDecoration(
                    hintText: "Enter Youre Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Text("Confirm Password", style: TextStyle(color: Colors.white)),
                SizedBox(height: 4),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Confirm youre password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      context.read<AuthCubit>().register(
                        userInfo: {
                          "username": userNameController.text,
                          "email": emailController.text,
                          "password": passwordController.text,
                        },
                      );
                    },
                    child: BlocConsumer<AuthCubit, AuthState>(
                      listener: (context, state) {
                        if (state.status == AuthStatus.error) {
                          SnackbarService.showError(
                            context: context,
                            message:
                                'Xatolik ketdi qayta urunib koring ilitmos sizdan !',
                          );
                        } else if (state.status == AuthStatus.loaded) {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            '/profile',
                            (_) => false,
                          );
                        }
                      },
                      builder: (context, state) {
                        return Container(
                          height: 58,
                          width: 342,
                          decoration: BoxDecoration(
                            color: Color(0xffE64C19),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: state.status == AuthStatus.loading
                                ? CircularProgressIndicator()
                                : Text(
                                    "Register ->",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Center(
                  child: Text(
                    "--------------------------------- OR SIGN UP WITH --------------------------------",
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
                        "Already have an account?",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(width: 3),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/welcome');
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Color(0xffE64C19)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
