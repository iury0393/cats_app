import 'package:flutter/material.dart';
import '../text_styles.dart';

class RoundedButton extends StatefulWidget {
  final String title;
  final double titleSize;
  final ButtonStyle? buttonStyle;
  final Color titleColor;
  final double? width;
  final double? height;
  final GestureTapCallback onPressed;
  final int? maxLines;

  const RoundedButton({
    Key? key,
    required this.title,
    required this.titleSize,
    required this.titleColor,
    this.width,
    this.height,
    required this.onPressed,
    this.maxLines,
    this.buttonStyle,
  }) : super(key: key);

  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: widget.buttonStyle ??
          ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Colors.transparent),
              ),
            ),
          ),
      child: SizedBox(
        width: widget.width ?? MediaQuery.of(context).size.width,
        height: widget.height ?? 54.0,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
            maxLines: widget.maxLines ?? 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.paragraph(
              widget.titleSize,
              weight: FontWeight.bold,
              color: widget.titleColor,
            ),
          ),
        ),
      ),
      onPressed: widget.onPressed,
    );
  }
}
