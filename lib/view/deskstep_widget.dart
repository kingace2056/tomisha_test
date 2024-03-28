import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tomisha/constants/color_constants.dart';
import 'package:tomisha/constants/image_constant.dart';
import 'package:tomisha/utils/zig_path.dart';

class DeskstepWidget extends StatelessWidget {
  const DeskstepWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding:
                  EdgeInsets.symmetric(horizontal: 343.sp, vertical: 99.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                          text: TextSpan(
                        children: [
                          TextSpan(
                            text: '1. ',
                            style: TextStyle(
                              textBaseline: TextBaseline.ideographic,
                              color: ColorConstants.secondaryText,
                              fontSize: 130.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Erstellen dein Lebenslauf',
                            style: TextStyle(
                              textBaseline: TextBaseline.ideographic,
                              color: ColorConstants.secondaryText,
                              fontSize: 30.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                  SizedBox(
                    width: 61.33.sp,
                  ),
                  SvgPicture.asset(
                    ImageConstants.flowerlady,
                    height: 253.sp,
                  )
                ],
              ),
            ),
            CustomPaint(
              size: Size(
                1920.sp,
                (1920.sp * 0.19375).toDouble(),
              ),
              painter: TopcsPaint(),
              child: Container(
                alignment: Alignment.center,
                padding:
                    EdgeInsets.only(left: 557.sp, top: 99.sp, bottom: 99.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          ImageConstants.taskmale,
                          height: 250.sp,
                        ),
                        SizedBox(
                          width: 61.33.sp,
                        ),
                        RichText(
                            text: TextSpan(
                          children: [
                            TextSpan(
                              text: '2. ',
                              style: TextStyle(
                                textBaseline: TextBaseline.ideographic,
                                color: ColorConstants.secondaryText,
                                fontSize: 130.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'Erstellen dein Lebenslauf',
                              style: TextStyle(
                                textBaseline: TextBaseline.ideographic,
                                color: ColorConstants.secondaryText,
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding:
                  EdgeInsets.only(left: 575.sp, top: 99.sp, bottom: 100.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '3. ',
                              style: TextStyle(
                                color: ColorConstants.secondaryText,
                                fontSize: 130.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            WidgetSpan(
                              alignment: PlaceholderAlignment
                                  .bottom, // Aligns the SizedBox to the bottom
                              child: SizedBox(
                                  height: 20
                                      .sp), // Adjust the height as needed for spacing
                            ),
                            TextSpan(
                              text: 'Mit nur einem Klick bewerben',
                              style: TextStyle(
                                color: ColorConstants.secondaryText,
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 61.33.sp,
                  ),
                  SvgPicture.asset(
                    ImageConstants.lady,
                    height: 253.sp,
                  )
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 280.sp, // Adjust the position of the line vertically
          left: 446.sp,

          child: SvgPicture.asset(
            ImageConstants
                .lineltr, // Replace with the correct path to your SVG line
            height: 360.sp, // Adjust the height of the line as needed
          ),
        ),
        Positioned(
          bottom: 300.sp, // Adjust the position of the line vertically
          left: 617.sp,
          child: SvgPicture.asset(
            ImageConstants
                .linertl, // Replace with the correct path to your SVG line
            height: 234.sp, // Adjust the height of the line as needed
          ),
        ),
      ],
    );
  }
}
