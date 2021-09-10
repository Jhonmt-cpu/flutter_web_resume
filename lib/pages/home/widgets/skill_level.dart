import 'package:curriculum/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillLevel extends StatelessWidget {
  const SkillLevel({
    Key? key,
    required this.tech,
    required this.level,
  }) : super(key: key);

  final String tech;
  final int level;

  @override
  Widget build(BuildContext context) {
    List<Widget> rowWidgets = [];
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].forEach((element) {
      rowWidgets.add(
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              right: 10,
            ),
            child: Container(
              height: 20,
              color: element * 10 <= level
                  ? AppColors.primaryBlue
                  : AppColors.white,
            ),
          ),
        ),
      );
    });
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 10,
            ),
            child: Text(
              tech.toUpperCase(),
              style: GoogleFonts.roboto(
                color: AppColors.white,
              ),
            ),
          ),
          Row(
            children: rowWidgets,
          ),
        ],
      ),
    );
  }
}
