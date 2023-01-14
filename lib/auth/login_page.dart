import 'package:car_share_app/app_constants/app_dimensions.dart';
import 'package:car_share_app/auth/auth_layout.dart';
import 'package:car_share_app/share_widgets/processing_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      child: Center(
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {},
              decoration: const InputDecoration(
                hintStyle: TextStyle(color: Colors.grey),
                hintText: 'Email',
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20.0),
            const TextField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.grey),
                hintText: 'Password',
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 10.0),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("This Feature is not implemented"),
                  ));
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(
              height: AppDimensions.doubleMainSpace,
            ),
            ProcessingButton(
                text: 'Login',
                state: null,
                onPressed: () {
                  // Navigator.pushNamed(context, '/dashboard');
                }),
            const SizedBox(
              height: AppDimensions.mainSpace,
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/registration');
                },
                child: const Text(
                  'Sign Up for free',
                  style: TextStyle(fontSize: 15.0, color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(
              height: AppDimensions.mainSpace,
            ),
          ],
        ),
      ),
    );
  }
}
