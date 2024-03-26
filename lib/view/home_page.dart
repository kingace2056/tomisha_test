import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tomisha/constants/color_constants.dart';
import 'package:tomisha/constants/image_constant.dart';
import 'package:tomisha/utils/screen_util.dart';
import 'package:tomisha/utils/zig_path.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _empTypeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: DeviceCheck.isMobile(context)
            ? Color(0xffE7FAFE).withOpacity(1.0)
            : Colors.white,
        appBar: AppBar(
          shadowColor: Color.fromARGB(162, 0, 0, 0),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12.sp),
              bottomRight: Radius.circular(12.sp),
            ),
          ),
          flexibleSpace: Container(
            height: DeviceCheck.isMobile(context)
                ? MediaQuery.of(context).size.height * 5 / 360
                : MediaQuery.of(context).size.height * 5 / 1080,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  ColorConstants.primaryColor,
                  ColorConstants.secondaryColor
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text('Login',
                    style: TextStyle(
                      color: ColorConstants.primaryColor,
                      fontSize: 14,
                    )))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomPaint(
                painter: RPSCustomPainter(),
                child: Container(
                  width: double.infinity,
                  height: DeviceCheck.isMobile(context) ? 500.sp : 660.sp,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFEBF4FF), // #EBF4FF
                        Color(0xFFE6FFFA), // #E6FFFA
                      ],
                      transform: GradientRotation(
                          102 * 3.1415927 / 180), // Convert degrees to radians
                    ),
                  ),
                  child: DeviceCheck.isMobile(context)
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Deine Job \nwebsite',
                              style: TextStyle(
                                  fontSize: 42.sp, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 144.sp,
                            ),
                            SvgPicture.asset(
                              ImageConstants.handshake,
                              width: MediaQuery.of(context).size.width,
                            )
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Deine Job \nwebsite',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 42.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 320.sp,
                                    height: 40.sp,
                                    margin: EdgeInsets.only(top: 53.sp),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      gradient: const LinearGradient(
                                        colors: [
                                          ColorConstants.primaryColor,
                                          ColorConstants.secondaryColor
                                        ],
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Kostenlos Registrieren',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 144.sp,
                            ),
                            SvgPicture.asset(
                              ImageConstants.handshake,
                              height: 455.sp,
                              width: 455.sp,
                            )
                          ],
                        ),
                ),
              ),
              DeviceCheck.isMobile(context)
                  ? Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.sp),
                            topRight: Radius.circular(12.sp),
                          )),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 320.sp,
                              height: 40.sp,
                              margin: EdgeInsets.only(top: 53.sp),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: const LinearGradient(
                                  colors: [
                                    ColorConstants.primaryColor,
                                    ColorConstants.secondaryColor
                                  ],
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Kostenlos Registrieren',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 91.sp, bottom: 10.sp),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _empTypeIndex = 0;
                                      });
                                    },
                                    child: Container(
                                      width: 160.sp,
                                      height: 40.sp,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12.sp),
                                            bottomLeft: Radius.circular(12.sp),
                                          ),
                                          color: _empTypeIndex == 0
                                              ? ColorConstants.primaryColorLight
                                              : Colors.white,
                                          border: Border.all(
                                              color: _empTypeIndex != 0
                                                  ? ColorConstants.borderColor
                                                  : Colors.transparent,
                                              width: 1.sp)),
                                      child: Text(
                                        'Arbeitnehmer',
                                        style: TextStyle(
                                            color: _empTypeIndex == 0
                                                ? Colors.white
                                                : ColorConstants
                                                    .primaryColorLight,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _empTypeIndex = 1;
                                      });
                                    },
                                    child: Container(
                                      width: 160.sp,
                                      height: 40.sp,
                                      margin: EdgeInsets.only(left: 0.5.sp),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: _empTypeIndex == 1
                                              ? ColorConstants.primaryColorLight
                                              : Colors.white,
                                          border: Border.all(
                                              color: _empTypeIndex != 1
                                                  ? ColorConstants.borderColor
                                                  : Colors.transparent,
                                              width: 1.sp)),
                                      child: Text(
                                        'Arbeitgeber',
                                        style: TextStyle(
                                            color: _empTypeIndex == 1
                                                ? Colors.white
                                                : ColorConstants
                                                    .primaryColorLight,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _empTypeIndex = 2;
                                      });
                                    },
                                    child: Container(
                                      width: 160.sp,
                                      height: 40.sp,
                                      margin: EdgeInsets.only(left: 0.5.sp),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(12.sp),
                                            bottomRight: Radius.circular(12.sp),
                                          ),
                                          color: _empTypeIndex == 2
                                              ? ColorConstants.primaryColorLight
                                              : Colors.white,
                                          border: Border.all(
                                              color: _empTypeIndex != 2
                                                  ? ColorConstants.borderColor
                                                  : Colors.transparent,
                                              width: 1.sp)),
                                      child: Text(
                                        'Temporärbüro',
                                        style: TextStyle(
                                            color: _empTypeIndex == 2
                                                ? Colors.white
                                                : ColorConstants
                                                    .primaryColorLight,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.sp,
                          ),
                          Text(
                            'Drei einfache Schritte zu\ndeinem neuen Job',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorConstants.primaryText,
                                fontSize: 21.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.sp, vertical: 10.sp),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      ImageConstants.flowerlady,
                                      height: 114.sp,
                                    ),
                                    RichText(
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
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(
                                    left: 10.sp, top: 10.sp, bottom: 10.sp),
                                child: Column(
                                  children: [
                                    RichText(
                                        text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '2. ',
                                          style: TextStyle(
                                            textBaseline:
                                                TextBaseline.ideographic,
                                            color: ColorConstants.secondaryText,
                                            fontSize: 130.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Erstellen dein Lebenslauf',
                                          style: TextStyle(
                                            textBaseline:
                                                TextBaseline.ideographic,
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
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(
                                    left: 10.sp, top: 10.sp, bottom: 10.sp),
                                child: Column(
                                  children: [
                                    RichText(
                                      textAlign: TextAlign.start,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '3. ',
                                            style: TextStyle(
                                              color:
                                                  ColorConstants.secondaryText,
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
                                            text:
                                                'Mit nur einem Klick bewerben',
                                            style: TextStyle(
                                              color:
                                                  ColorConstants.secondaryText,
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
                                    Positioned(
                                      child: SvgPicture.asset(
                                        ImageConstants.lady,
                                        height: 114.sp,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(top: 47.sp, bottom: 55.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _empTypeIndex = 0;
                              });
                            },
                            child: Container(
                              width: 160.sp,
                              height: 40.sp,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12.sp),
                                    bottomLeft: Radius.circular(12.sp),
                                  ),
                                  color: _empTypeIndex == 0
                                      ? ColorConstants.primaryColorLight
                                      : Colors.white,
                                  border: Border.all(
                                      color: _empTypeIndex != 0
                                          ? ColorConstants.borderColor
                                          : Colors.transparent,
                                      width: 1.sp)),
                              child: Text(
                                'Arbeitnehmer',
                                style: TextStyle(
                                    color: _empTypeIndex == 0
                                        ? Colors.white
                                        : ColorConstants.primaryColorLight,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _empTypeIndex = 1;
                              });
                            },
                            child: Container(
                              width: 160.sp,
                              height: 40.sp,
                              margin: EdgeInsets.only(left: 0.5.sp),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: _empTypeIndex == 1
                                      ? ColorConstants.primaryColorLight
                                      : Colors.white,
                                  border: Border.all(
                                      color: _empTypeIndex != 1
                                          ? ColorConstants.borderColor
                                          : Colors.transparent,
                                      width: 1.sp)),
                              child: Text(
                                'Arbeitgeber',
                                style: TextStyle(
                                    color: _empTypeIndex == 1
                                        ? Colors.white
                                        : ColorConstants.primaryColorLight,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _empTypeIndex = 2;
                              });
                            },
                            child: Container(
                              width: 160.sp,
                              height: 40.sp,
                              margin: EdgeInsets.only(left: 0.5.sp),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.sp),
                                    bottomRight: Radius.circular(12.sp),
                                  ),
                                  color: _empTypeIndex == 2
                                      ? ColorConstants.primaryColorLight
                                      : Colors.white,
                                  border: Border.all(
                                      color: _empTypeIndex != 2
                                          ? ColorConstants.borderColor
                                          : Colors.transparent,
                                      width: 1.sp)),
                              child: Text(
                                'Temporärbüro',
                                style: TextStyle(
                                    color: _empTypeIndex == 2
                                        ? Colors.white
                                        : ColorConstants.primaryColorLight,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
              Text(
                'Drei einfache Schritte zu\ndeinem neuen Job',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: ColorConstants.primaryText,
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w500),
              ),
              !DeviceCheck.isMobile(context)
                  ? Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 343.sp, vertical: 99.sp),
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
                                              textBaseline:
                                                  TextBaseline.ideographic,
                                              color:
                                                  ColorConstants.secondaryText,
                                              fontSize: 130.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Erstellen dein Lebenslauf',
                                            style: TextStyle(
                                              textBaseline:
                                                  TextBaseline.ideographic,
                                              color:
                                                  ColorConstants.secondaryText,
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
                                padding: EdgeInsets.only(
                                    left: 557.sp, top: 99.sp, bottom: 99.sp),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
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
                                                textBaseline:
                                                    TextBaseline.ideographic,
                                                color: ColorConstants
                                                    .secondaryText,
                                                fontSize: 130.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Erstellen dein Lebenslauf',
                                              style: TextStyle(
                                                textBaseline:
                                                    TextBaseline.ideographic,
                                                color: ColorConstants
                                                    .secondaryText,
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
                              padding: EdgeInsets.only(
                                  left: 575.sp, top: 99.sp, bottom: 100.sp),
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
                                                color: ColorConstants
                                                    .secondaryText,
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
                                              text:
                                                  'Mit nur einem Klick bewerben',
                                              style: TextStyle(
                                                color: ColorConstants
                                                    .secondaryText,
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
                          top: 280
                              .sp, // Adjust the position of the line vertically
                          left: 446.sp,

                          child: SvgPicture.asset(
                            ImageConstants
                                .lineltr, // Replace with the correct path to your SVG line
                            height: 360
                                .sp, // Adjust the height of the line as needed
                          ),
                        ),
                        Positioned(
                          bottom: 300
                              .sp, // Adjust the position of the line vertically
                          left: 617.sp,
                          child: SvgPicture.asset(
                            ImageConstants
                                .linertl, // Replace with the correct path to your SVG line
                            height: 234
                                .sp, // Adjust the height of the line as needed
                          ),
                        ),
                      ],
                    )
                  : SizedBox.shrink()
            ],
          ),
        ));
  }
}
