import 'package:flutter/cupertino.dart';
import '../text_styles.dart';

class RoundedCupertinoButton extends StatefulWidget {
  final String title;
  final double titleSize;
  final Color titleColor;
  final double? width;
  final double? height;
  final GestureTapCallback onPressed;
  final int? maxLines;
  final double? radius;
  final Color? btnColor;
  final Color? btnDisableColor;

  const RoundedCupertinoButton({
    Key? key,
    required this.title,
    required this.titleSize,
    required this.titleColor,
    required this.onPressed,
    required this.btnColor,
    this.radius,
    this.width,
    this.height,
    this.maxLines,
    this.btnDisableColor,
  }) : super(key: key);

  @override
  _RoundedCupertinoButtonState createState() => _RoundedCupertinoButtonState();
}

class _RoundedCupertinoButtonState extends State<RoundedCupertinoButton> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      alignment: Alignment.center,
      borderRadius: BorderRadius.circular(widget.radius ?? 10),
      color: widget.btnColor,
      disabledColor: widget.btnDisableColor ?? CupertinoColors.white,
      child: SizedBox(
        width: widget.width ?? MediaQuery.of(context).size.width,
        height: widget.height ?? 20.0,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
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
