import 'package:flutter/material.dart';
import 'package:medical_flutter/UI_login/singUp.dart';
import 'package:medical_flutter/UI_login/widgets/CustomTextButton.dart';
import 'package:medical_flutter/UI_login/widgets/RowTextWithButton.dart';
import 'package:medical_flutter/UI_login/widgets/TextField.dart';
import 'package:medical_flutter/UI_login/widgets/forgot_view.dart';
import 'package:medical_flutter/core/function/NavigateTo.dart';
import 'package:medical_flutter/views/UI/main_home.dart';
import 'package:medical_flutter/views/home/ui/home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome To Our Market',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Card(
                margin: EdgeInsets.all(24),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        CostomTextFormField(
                          labelText: "Email",
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 30),
                        CostomTextFormField(
                          labelText: "Password",
                          keyboardType: TextInputType.visiblePassword,
                          isSecured: true,

                          suffIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.visibility_off),
                          ),
                        ),
                        SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomTextButton(
                              text: "Forget password?",
                              onTap: () {
                                NavigatorTo(context, const ForgotView());
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        RowTextWithButton(text: 'Login', OnTap: () {}),

                        SizedBox(height: 10),
                        RowTextWithButton(
                          text: 'Login With Goole',
                          OnTap: () {
                            NavigatorTo(context, MainHome());
                          },
                        ),

                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account?",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 10),

                            CustomTextButton(
                              text: 'Sign Up',
                              onTap: () {
                                NavigatorTo(context, const Singup());
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
