// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class JoiningDetailsForm extends StatelessWidget {
  const JoiningDetailsForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double Value = 24;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 51, right: 10, left: 10),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFebf0ff)),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        "Joining Date",
                        style: TextStyle(color: Color(0xFF9098b1)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(Icons.calendar_month_outlined,
                        color: Color(0xFF9098b1)),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 33,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              "EMPLOYMENT TIME",
              style: TextStyle(fontSize: 12, color: Color(0xFF454545)),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: SizedBox(
              height: 36,
              width: 265,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF31a7ea),
                          border: Border.all(color: const Color(0xFF31a7ea)),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(6),
                              bottomLeft: Radius.circular(6))),
                      child: const Center(
                          child: Text(
                        "Full Time",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFebf0ff)),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(6),
                            bottomRight: Radius.circular(6))),
                    child: const Center(
                        child: Text(
                      "Part Time",
                      style: TextStyle(fontSize: 14),
                    )),
                  )),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  "WORKING HOURS PER DAY",
                  style: TextStyle(fontSize: 12, color: Color(0xFF454545)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "2:30  hr",
                  style: TextStyle(color: Color(0xFFff9a3e), fontSize: 14),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Slider(
              value: Value,
              onChanged: (Value) {},
              min: 0.0,
              max: 54,
              activeColor: const Color(0xFF31a7ea),
              inactiveColor: const Color.fromRGBO(49, 167, 234, 0.38))
        ],
      ),
    );
  }
}
