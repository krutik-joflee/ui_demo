// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class EmployeePermissionForm extends StatelessWidget {
  const EmployeePermissionForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSwitch = false;
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFebf0ff)),
                    borderRadius: BorderRadius.circular(6)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 16, left: 15, right: 15, bottom: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Live Location Tracking",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text(
                                "This will track user live location when he is is",
                                style: TextStyle(
                                    color: Color(0xFF9098b1), fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: FlutterSwitch(
                            value: isSwitch,
                            onToggle: (value) {},
                            width: 48.0,
                            height: 24.0,
                            toggleSize: 20.0,
                            borderRadius: 30.0,
                            padding: 4.0,
                            inactiveColor: const Color(0xFFeae9f0)),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFebf0ff)),
                    borderRadius: BorderRadius.circular(6)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 16, left: 15, right: 15, bottom: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "GPS Tracking",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text(
                                "This will fetch location only when user Check-In Or Check-Out",
                                style: TextStyle(
                                    color: Color(0xFF9098b1), fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: FlutterSwitch(
                            value: isSwitch,
                            onToggle: (value) {},
                            width: 48.0,
                            height: 24.0,
                            toggleSize: 20.0,
                            borderRadius: 30.0,
                            padding: 4.0,
                            inactiveColor: const Color(0xFFeae9f0)),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFebf0ff)),
                    borderRadius: BorderRadius.circular(6)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 16, left: 15, right: 15, bottom: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Call Logs",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text(
                                "This will store call Logs of users if call is done from the App",
                                style: TextStyle(
                                    color: Color(0xFF9098b1), fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: FlutterSwitch(
                            value: isSwitch,
                            onToggle: (value) {},
                            width: 48.0,
                            height: 24.0,
                            toggleSize: 20.0,
                            borderRadius: 30.0,
                            padding: 4.0,
                            inactiveColor: const Color(0xFFeae9f0)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
