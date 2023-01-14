import 'package:car_share_app/auth/auth_layout.dart';
import 'package:car_share_app/share_widgets/processing_button.dart';
import 'package:flutter/material.dart';

import 'app_constants/app_dimensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: AppDimensions.tripleMainSpace * 5,
              child: ProcessingButton(
                  text: 'Login',
                  state: null,
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  }),
            ),
            const SizedBox(
              height: AppDimensions.mainSpace,
            ),
            SizedBox(
              width: AppDimensions.tripleMainSpace * 5,
              child: ProcessingButton(
                  text: 'Register',
                  state: null,
                  onPressed: () {
                    Navigator.pushNamed(context, '/registration');
                  }),
            ),
            const SizedBox(
              height: AppDimensions.tripleMainSpace,
            )
          ],
        ),
      ),
    );
  }
}
