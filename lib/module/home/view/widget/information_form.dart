import 'package:flutter/material.dart';
import 'package:ui_demo/module/home/view/widget/textfield_widget.dart';

class InformationForm extends StatelessWidget {
  const InformationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 33, right: 10, left: 10),
        child: Column(
          children: [
            SizedBox(
                height: 97,
                width: 97,
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color.fromRGBO(0, 0, 0, 0.2),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 23.7,
                          width: 23.7,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.black],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                          child: const Icon(
                            Icons.camera_alt_rounded,
                            color: Colors.white,
                            size: 12,
                          ),
                        )),
                  ],
                )),
            const SizedBox(
              height: 21,
            ),
            const TextFieldWidget(
              hintText: "Full Name",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFebf0ff)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Center(
                        child: Text(
                      "+91",
                      style: TextStyle(color: Color(0xFF9098b1)),
                    )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                      child: TextFieldWidget(
                    hintText: "Mobile Number",
                  )),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: TextFieldWidget(hintText: "Email ID"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFebf0ff)),
                          borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.0),
                              child: Text(
                                "Birth Date",
                                style: TextStyle(color: Color(0xFF9098b1)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(
                              Icons.calendar_month_outlined,
                              color: Color(0xFF9098b1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFebf0ff)),
                          borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 1.0),
                              child: Text(
                                "Anniversary",
                                style: TextStyle(color: Color(0xFF9098b1)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Icon(
                              Icons.calendar_month_outlined,
                              color: Color(0xFF9098b1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  const Expanded(
                      child: TextFieldWidget(hintText: "Designation")),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 165,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFebf0ff)),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Role",
                              style: TextStyle(color: Color(0xFF9098b1)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF9098b1),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFebf0ff)),
                    borderRadius: BorderRadius.circular(6)),
                child: Row(
                  children: const [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Text(
                          "Reports To",
                          style: TextStyle(color: Color(0xFF9098b1)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xFF9098b1),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 30),
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children: const [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Text(
                          "ADD MORE DETAILS",
                          style: TextStyle(
                              color: Color(0xFF31a7ea),
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.circle_outlined,
                        color: Color(0xFF31a7ea),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
