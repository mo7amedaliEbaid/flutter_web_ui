import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_ui/configs/configs.dart';
import 'package:google_fonts/google_fonts.dart';

import '../gen/assets.gen.dart';

class CommonRow extends StatefulWidget {
  const CommonRow({super.key});

  @override
  State<CommonRow> createState() => _CommonRowState();
}

class _CommonRowState extends State<CommonRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Items',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 22,
          ),
        ),
        Row(
          children: [
            SvgPicture.asset(Assets.svg.filterButton),
            Space.xf(.7),
            Container(
              height: AppDimensions.normalize(15),
              width: .5,
              padding: EdgeInsets.only(bottom: 70),
              color: Color(0xff484848),
            ),
            Space.xf(.7),
            Container(
              //   width: AppDimensions.normalize(50),
              padding: EdgeInsets.symmetric(
                vertical: AppDimensions.normalize(4),
                horizontal: AppDimensions.normalize(7),
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFFFC268),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(Assets.svg.plus),
                  Space.xf(.3),
                  Text(
                    "Add a New Item",
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class MobileRow extends StatefulWidget {
  const MobileRow({super.key});

  @override
  State<MobileRow> createState() => _MobileRowState();
}

class _MobileRowState extends State<MobileRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Items',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 22,
          ),
        ),
        SvgPicture.asset(Assets.svg.filterButton),
      ],
    );
  }
}
