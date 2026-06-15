import 'package:flutter/material.dart';

import 'package:medical_flutter/UI_login/widgets/CustomTextButton.dart';
import 'package:medical_flutter/UI_login/widgets/RowTextWithButton.dart';
import 'package:medical_flutter/UI_login/widgets/TextField.dart';

class Singup extends StatelessWidget {
  const Singup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                      CostomTextFormField(
                        labelText: 'Name',
                        keyboardType: TextInputType.name,
                      ),
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

                      const SizedBox(height: 20),
                      RowTextWithButton(text: 'sing Up', OnTap: () {}),

                      SizedBox(height: 10),
                      RowTextWithButton(
                        text: 'Sing up With Goole',
                        OnTap: () {},
                      ),

                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already Have an account?",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 5),

                          CustomTextButton(
                            text: 'Login',
                            onTap: () {
                              Navigator.pop(context);
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
    );
  }
}
