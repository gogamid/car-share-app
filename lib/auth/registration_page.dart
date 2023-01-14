import 'package:car_share_app/auth/auth_layout.dart';
import 'package:flutter/material.dart';

import '../app_constants/app_dimensions.dart';
import '../share_widgets/processing_button.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

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
                hintText: 'Full Name',
                labelText: 'Full Name',
                labelStyle: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20.0),
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
            const SizedBox(height: 20.0),
            const SizedBox(
              height: AppDimensions.doubleMainSpace,
            ),
            ProcessingButton(
                text: 'Register',
                state: null,
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Registration Successfull"),
                  ));
                  Navigator.pushNamed(context, '/login');
                }),
            const SizedBox(
              height: AppDimensions.doubleMainSpace,
            ),
          ],
        ),
      ),
    );
  }
}
