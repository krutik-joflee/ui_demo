// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_demo/module/home/view/widget/employee_permission_form.dart';
import 'package:ui_demo/module/home/view/widget/information_form.dart';
import 'package:ui_demo/module/home/view/widget/joining_details_form.dart';
import 'package:ui_demo/module/home/view/widget/my_topbar.dart';
import 'package:ui_demo/utils/enum/my_enum.dart';

import '../../controller/myhomepage_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController = PageController();

  final MyHomeScreenController homeScreenController =
      Get.put(MyHomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Add Employee",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            //FIX TOP BAR
            MyTopBar(),
            //FORM ARE
            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: pageController,
                children: const [
                  //PAGE 1 -- PERSONAL DETAILS
                  InformationForm(),
                  //PAGE 2 -- JOINING DETAILS
                  JoiningDetailsForm(),
                  //PAGE 3 -- EMPLOYEE PERMISSION
                  EmployeePermissionForm(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Obx(
                    () => GestureDetector(
                      onTap: () {
                        switch (
                            homeScreenController.addEmoployeeStepper.value) {
                          case MyEnum.personal:
                            Get.back();
                            break;
                          case MyEnum.joining:
                            pageController.animateToPage(0,
                                duration: Duration(milliseconds: 200),
                                curve: Curves.easeInOut);
                            homeScreenController.addEmoployeeStepper.value =
                                MyEnum.personal;
                            break;
                          case MyEnum.permission:
                            pageController.animateToPage(1,
                                duration: Duration(milliseconds: 200),
                                curve: Curves.easeInOut);
                            homeScreenController.addEmoployeeStepper.value =
                                MyEnum.joining;
                            break;
                        }
                      },
                      child: Container(
                        height: 50,
                        width: 131,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF9a9494)),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Visibility(
                              visible: homeScreenController
                                          .addEmoployeeStepper.value ==
                                      MyEnum.personal
                                  ? false
                                  : true,
                              child: Icon(
                                Icons.navigate_before_rounded,
                                color: Color(0xFF8e8e8e),
                              ),
                            ),
                            Text(
                              homeScreenController.addEmoployeeStepper.value ==
                                      MyEnum.personal
                                  ? "CANCEL"
                                  : 'BACK',
                              style: TextStyle(
                                  color: Color(0xFF8e8e8e),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Obx(
                    () => GestureDetector(
                      onTap: () {
                        switch (
                            homeScreenController.addEmoployeeStepper.value) {
                          case MyEnum.personal:
                            pageController.animateToPage(1,
                                duration: Duration(milliseconds: 200),
                                curve: Curves.easeInOut);
                            homeScreenController.addEmoployeeStepper.value =
                                MyEnum.joining;
                            break;
                          case MyEnum.joining:
                            pageController.animateToPage(2,
                                duration: Duration(milliseconds: 200),
                                curve: Curves.easeInOut);
                            homeScreenController.addEmoployeeStepper.value =
                                MyEnum.permission;
                            break;
                          case MyEnum.permission:
                            Get.back();
                            break;
                        }
                      },
                      child: Container(
                        height: 50,
                        width: 131,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: const [
                              Color.fromRGBO(26, 173, 244, 1),
                              Color.fromRGBO(7, 120, 177, 1),
                            ]),
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              homeScreenController.addEmoployeeStepper.value ==
                                      MyEnum.permission
                                  ? "SAVE"
                                  : 'NEXT',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Visibility(
                              visible: homeScreenController
                                          .addEmoployeeStepper.value ==
                                      MyEnum.permission
                                  ? false
                                  : true,
                              child: Icon(
                                Icons.navigate_next_rounded,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            )
          ],
        ),
      ),
    );
  }
}
