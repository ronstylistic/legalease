import 'package:flutter/material.dart';
import 'package:legalease/components/custom_iconbutton.dart';
import 'package:legalease/components/custom_textformfield.dart';
import 'package:legalease/views/login/login_page.dart';

class RegisterPage extends StatelessWidget {
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  RegisterPage({Key? key}) : super(key: key);

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
                  //Welcome back text
                  Text("Register",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0),
                  ),
                  //Description
                  Text("Create your account",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700]),
                  ),
                  SizedBox(height: 50.0),
                  //Firstname
                  CustomTextFormField(
                    controller: firstnameController,
                    hint: "Type your firstname",
                    prefixIcon: Icons.person_outline,
                    isObscureText: false,
                  ),
                  SizedBox(height: 20),
                  //Lastname
                  CustomTextFormField(
                    controller: lastnameController,
                    hint: "Type your lastname",
                    prefixIcon: Icons.person_outline,
                    isObscureText: false,
                  ),
                  SizedBox(height: 20),
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

                  SizedBox(height: 50),

                  //Submit Button
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0)
                          ),
                        ),
                        onPressed: () {},
                        child: Text("Register", style: TextStyle(
                            fontSize: 16.0)
                        )
                    ),
                  ),
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
                      Text("Already have an account? "),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                        child: Text("Login", style: TextStyle(
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
