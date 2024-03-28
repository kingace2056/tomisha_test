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
import 'package:tomisha/view/deskstep_widget.dart';
import 'package:tomisha/view/flow_page.dart';

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
                              textAlign: TextAlign.center,
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
                          boxShadow: [
                            BoxShadow(
                              color: ColorConstants.dropShadow,
                              offset: const Offset(0, -2),
                              blurRadius: 4,
                            ),
                          ],
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
                              margin: EdgeInsets.only(top: 24.sp),
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
                            margin: EdgeInsets.symmetric(horizontal: 10.sp),
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
                          AnimatedContainer(
                            curve: Curves.easeIn,
                            duration: const Duration(milliseconds: 500),
                            child: Text(
                              _empTypeIndex == 0
                                  ? 'Drei einfache Schritte\nzu deinem neuen Job'
                                  : _empTypeIndex == 1
                                      ? 'Drei einfache Schritte zu deinem neuen Mitarbeiter'
                                      : 'Drei einfache Schritte zur Vermittlung neuer Mitarbeiter',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorConstants.primaryText,
                                  fontSize: 21.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          PathWidget()
                        ],
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(
                        top: 47.sp,
                        bottom: 55.sp,
                      ),
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
                  ? DeskstepWidget()
                  : SizedBox.shrink()
            ],
          ),
        ));
  }
}
