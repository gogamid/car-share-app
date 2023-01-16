import 'package:flutter/material.dart';

import '../app_constants/app_constants.dart';
import '../app_constants/app_dimensions.dart';

// ignore: must_be_immutable
class ProcessingButton extends StatelessWidget {
  ProcessingButton({
    Key? key,
    required this.text,
    required this.state,
    required this.onPressed,
  }) : super(key: key);

  ProcessingButton.positive({
    Key? key,
    required this.text,
    required this.state,
    required this.onPressed,
  }) : super(key: key) {
    buttonType = ElevatedButtonType.positive;
  }
  ProcessingButton.negative({
    Key? key,
    required this.text,
    required this.state,
    required this.onPressed,
  }) : super(key: key) {
    buttonType = ElevatedButtonType.negative;
  }
  ElevatedButtonType buttonType = ElevatedButtonType.none;
  final String text;
  final NotifierState? state;

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: AppDimensions.tripleMainSpace,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            // backgroundColor: getPrimary(
            //   buttonType,
            //   context,
            // ), //change background color of button
            // foregroundColor: Theme.of(context)
            //     .colorScheme
            //     .onPrimary, //change text color of button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            elevation: 5.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              state == NotifierState.loading
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : Text(
                      text,
                    )
            ],
          ),
        ),
      );

  Color getPrimary(ElevatedButtonType type, BuildContext context) {
    switch (type) {
      case ElevatedButtonType.negative:
        return Theme.of(context).colorScheme.error;

      case ElevatedButtonType.positive:
        return Colors.green;

      case ElevatedButtonType.none:
        return Theme.of(context).colorScheme.primary;

      default:
        return Theme.of(context).colorScheme.primary;
    }
  }
}
