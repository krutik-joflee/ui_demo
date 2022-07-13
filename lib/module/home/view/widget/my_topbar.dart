import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_demo/module/home/controller/myhomepage_controller.dart';
import 'package:ui_demo/utils/enum/my_enum.dart';

class MyTopBar extends StatefulWidget {
  const MyTopBar({Key? key}) : super(key: key);

  @override
  State<MyTopBar> createState() => _MyTopBarState();
}

class _MyTopBarState extends State<MyTopBar> {
  MyHomeScreenController homeScreenController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 20, right: 20),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: Colors.white,
                            thickness: 3,
                          ),
                        ),
                        Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 3,
                                color: homeScreenController
                                            .addEmoployeeStepper.value ==
                                        MyEnum.personal
                                    ? const Color(0xFF31a7ea)
                                    : const Color(0xFF00d238)),
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            height: 34,
                            width: 34,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.transparent),
                              color: homeScreenController
                                              .addEmoployeeStepper.value ==
                                          MyEnum.joining ||
                                      homeScreenController
                                              .addEmoployeeStepper.value ==
                                          MyEnum.permission
                                  ? const Color(0xFF00d238)
                                  : const Color(0xFF31a7ea),
                              shape: BoxShape.circle,
                            ),
                            margin: const EdgeInsets.all(4),
                            child: const Center(
                                child: Icon(
                              Icons.done,
                              color: Colors.white,
                            )),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: homeScreenController
                                            .addEmoployeeStepper.value ==
                                        MyEnum.joining ||
                                    homeScreenController
                                            .addEmoployeeStepper.value ==
                                        MyEnum.permission
                                ? const Color(0xFF00d238)
                                : const Color(0xFF31a7ea),
                            thickness: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Personal\nDetails",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: homeScreenController
                                        .addEmoployeeStepper.value ==
                                    MyEnum.permission
                                ? const Color(0xFF00d238)
                                : const Color(0xFF31a7ea),
                            thickness: 3,
                          ),
                        ),
                        Container(
                          height: 44,
                          width: 44,
                          decoration:
                              homeScreenController.addEmoployeeStepper.value ==
                                          MyEnum.joining ||
                                      homeScreenController
                                              .addEmoployeeStepper.value ==
                                          MyEnum.permission
                                  ? BoxDecoration(
                                      border: Border.all(
                                          width: 3,
                                          color: homeScreenController
                                                      .addEmoployeeStepper
                                                      .value ==
                                                  MyEnum.joining
                                              ? const Color(0xFF31a7ea)
                                              : const Color(0xFF00d238)),
                                      shape: BoxShape.circle,
                                    )
                                  : const BoxDecoration(),
                          child: Container(
                            height: 34,
                            width: 34,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.transparent),
                              color: homeScreenController
                                          .addEmoployeeStepper.value ==
                                      MyEnum.permission
                                  ? const Color(0xFF00d238)
                                  : const Color(0xFF31a7ea),
                              shape: BoxShape.circle,
                            ),
                            margin: homeScreenController
                                            .addEmoployeeStepper.value ==
                                        MyEnum.joining ||
                                    homeScreenController
                                            .addEmoployeeStepper.value ==
                                        MyEnum.permission
                                ? const EdgeInsets.all(4)
                                : const EdgeInsets.all(0),
                            child: Center(
                                child: homeScreenController
                                                .addEmoployeeStepper.value ==
                                            MyEnum.joining ||
                                        homeScreenController
                                                .addEmoployeeStepper.value ==
                                            MyEnum.permission
                                    ? const Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      )
                                    : const Text(
                                        "2",
                                        style: TextStyle(color: Colors.white),
                                      )),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: homeScreenController
                                        .addEmoployeeStepper.value ==
                                    MyEnum.permission
                                ? const Color(0xFF00d238)
                                : const Color(0xFF31a7ea),
                            thickness: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Joining\nDetails",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Divider(
                              color: Color(0xFF31a7ea),
                              thickness: 3,
                            ),
                          ),
                          Container(
                            height: 44,
                            width: 44,
                            decoration: homeScreenController
                                        .addEmoployeeStepper.value ==
                                    MyEnum.permission
                                ? BoxDecoration(
                                    border: Border.all(
                                        width: 3,
                                        color: homeScreenController
                                                    .addEmoployeeStepper
                                                    .value ==
                                                MyEnum.permission
                                            ? const Color(0xFF31a7ea)
                                            : const Color(0xFF00d238)),
                                    shape: BoxShape.circle,
                                  )
                                : const BoxDecoration(),
                            child: Container(
                              height: 34,
                              width: 34,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.transparent),
                                color: const Color(0xFF31a7ea),
                                shape: BoxShape.circle,
                              ),
                              margin: homeScreenController
                                          .addEmoployeeStepper.value ==
                                      MyEnum.permission
                                  ? const EdgeInsets.all(4)
                                  : const EdgeInsets.all(0),
                              child: const Center(
                                  child: Text(
                                "3",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ),
                          const Expanded(
                            child: Divider(
                              color: Colors.white,
                              thickness: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Employee\nPermission",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
