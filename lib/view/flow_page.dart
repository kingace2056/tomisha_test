import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tomisha/constants/color_constants.dart';
import 'package:tomisha/constants/image_constant.dart';
import 'package:tomisha/utils/zig_path.dart';

class PathWidget extends StatelessWidget {
  const PathWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250.sp,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
          child: Stack(
            children: [
              Positioned(
                right: 40.sp,
                top: 20,
                child: SvgPicture.asset(
                  ImageConstants.flowerlady,
                  // height: 114.sp,
                  width: 219.sp,
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(
                      text: '1.',
                      style: TextStyle(
                        color: ColorConstants.secondaryText,
                        fontSize: 130.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Erstellen dein Lebenslauf',
                      style: TextStyle(
                        color: ColorConstants.secondaryText,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
        CustomPaint(
          size: Size(
            MediaQuery.of(context).size.width,
            250.sp,
          ),
          painter: TopcsPaint(),
          child: Container(
            // height: 250.sp,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 10.sp, top: 10.sp, bottom: 10.sp),
            child: Column(
              children: [
                RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '2.',
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
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )),
                SvgPicture.asset(
                  ImageConstants.taskmale,
                  height: 126.sp,
                ),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(
              left: 10.sp, top: 10.sp, bottom: 10.sp, right: 10.sp),
          child: Column(
            children: [
              RichText(
                textAlign: TextAlign.right,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '3.',
                      style: TextStyle(
                        color: ColorConstants.secondaryText,
                        fontSize: 130.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment
                          .top, // Aligns the SizedBox to the bottom
                      child: SizedBox(
                          height:
                              20.sp), // Adjust the height as needed for spacing
                    ),
                    TextSpan(
                      text: 'Mit nur einem Klick bewerben',
                      style: TextStyle(
                        color: ColorConstants.secondaryText,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 61.33.sp,
              ),
              SvgPicture.asset(
                ImageConstants.lady,
                height: 114.sp,
              )
            ],
          ),
        ),
      ],
    );
  }
}
