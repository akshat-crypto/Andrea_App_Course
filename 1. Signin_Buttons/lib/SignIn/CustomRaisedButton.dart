import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  //creating a constructor
  CustomRaisedButton({
    Key key,
    this.child,
    this.color,
    this.borderRadius: 2.0, //passing default args
    this.height: 50.0,
    this.onPressed,
  })  : assert(borderRadius != null),
        super(key: key);

  ///assert used to check if their is not any null value passed in the clling functn
  ///super is used to inherit the parent class properties

  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        onPressed: onPressed,
        child: child,
        color: color,
        disabledColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
