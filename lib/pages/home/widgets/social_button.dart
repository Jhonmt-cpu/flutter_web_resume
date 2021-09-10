import 'package:curriculum/core/core.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

class SocilaButton extends StatefulWidget {
  const SocilaButton({
    required this.icon,
    Key? key,
    required this.url,
  }) : super(key: key);

  final IconData icon;
  final String url;

  @override
  _SocilaButtonState createState() => _SocilaButtonState();
}

class _SocilaButtonState extends State<SocilaButton> {
  Color backgroundColor = Colors.transparent;
  Color iconColor = AppColors.primaryBlue;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          backgroundColor = AppColors.primaryBlue;
          iconColor = AppColors.white;
        });
      },
      onExit: (event) {
        setState(() {
          backgroundColor = Colors.transparent;
          iconColor = AppColors.primaryBlue;
        });
      },
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          js.context.callMethod('open', [widget.url]);
        },
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              40,
            ),
            border: Border.all(
              width: 1,
              color: AppColors.primaryBlue,
            ),
            color: backgroundColor,
          ),
          child: Icon(
            widget.icon,
            size: 15,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
