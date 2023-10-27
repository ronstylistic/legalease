import 'package:flutter/material.dart';
import 'package:legalease/components/custom_elevated_button.dart';
import 'package:legalease/components/custom_iconbutton.dart';
import 'package:legalease/components/custom_textformfield.dart';
import 'package:legalease/utils/Styles.dart';
import 'package:legalease/views/register/register_page.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  void login(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.0),
                  //Welcome back text
                  Text("Welcome Back",
                    style: Styles.headingStyle,
                  ),
                  //Description
                  Text("Login you account",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700]),
                  ),
                  SizedBox(height: 50.0),
                  //Email textfield
                  CustomTextFormField(
                    controller: emailController,
                    hint: "Type your email",
                    prefixIcon: Icons.email_outlined,
                    isObscureText: false,
                  ),
                  SizedBox(height: 20),
                  //Password trextfield
                  CustomTextFormField(
                    controller: passwordController,
                    hint: "Type your password",
                    prefixIcon: Icons.lock_clock_outlined,
                    isObscureText: true,
                  ),

                  SizedBox(height: 5),
                  //Forgot Password
                  GestureDetector(
                    onTap: (){

                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Forgot Password?",
                              style: TextStyle(color: Colors.blue.shade500))
                        ]
                    ),
                  ),

                  SizedBox(height: 50),

                  //Submit Button
                  CustomElevatedButton(text: "Login", height: 50, onPressed: login),

                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                        endIndent: 10.0,
                        indent: 5.0)
                      ),
                      Text("OR", style: TextStyle(color: Colors.grey.shade400)),
                      Expanded(child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                        indent: 10.0,
                        endIndent: 5.0)
                      )
                    ],
                  ),
                  //sign in with button
                  SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(imageName: "google.svg", size: 50),
                      SizedBox(width: 10.0),
                      CustomIconButton(imageName: "facebook.svg", size: 50)
                    ],
                  ),
                  SizedBox(height: 10),

                  //dont have account text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? "),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  RegisterPage()),
                          );
                        },
                        child: Text("Register", style: TextStyle(
                          color: Colors.blue.shade500
                        ),),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
