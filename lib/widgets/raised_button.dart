import 'package:flutter/material.dart';

import 'text_widget.dart';

class RaisedButtonWidget extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color textColor, borderColor, backgroundColor;
  final double shapeRadius;
  final double elevation;

  const RaisedButtonWidget({
    Key key,
    @required this.title,
    @required this.onPressed,
    this.textColor,
    this.borderColor,
    this.backgroundColor,
    this.elevation,
    this.shapeRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: elevation ?? 0,
      color: backgroundColor,
      shape: shapeRadius == null
          ? Theme.of(context).buttonTheme.shape
          : RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(shapeRadius)),
      child: TextWidget(
        title: title,
        color: textColor ?? Theme.of(context).accentColor,
      ),
      onPressed: onPressed,
    );
  }
}
