import 'package:flutter/material.dart';
import 'package:proof_app/common/common.dart';

class CustomElevatedButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;
  const CustomElevatedButton({Key? key, required this.onPressed, required this.text}) : super(key: key);

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Common.displayHeight(context) * 0.07,
      width: Common.displayWidth(context)* 0.9,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0)),
          backgroundColor: Color.fromRGBO(0,172, 155, 1),
        ),
        child: Text(
          widget.text
        ),
      ),
    );
  }
}
