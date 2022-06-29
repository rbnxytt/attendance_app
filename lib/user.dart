import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/login.dart';
import 'package:my_app/views/line_of_business.dart';
import 'package:my_app/views/logs.dart';
import 'package:my_app/views/schedule.dart';
import 'package:my_app/widgets/background.dart';
import 'package:my_app/widgets/ribbon_button.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class UserPage extends StatefulWidget {
  static const String id = 'user-page';
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  int currentView = 0;

  List<Widget> viewList = [
    const LogView(),
    const LineOfBusiness(),
    const ScheduleTable(),
  ];

  void viewChange(int tabNum) {
    setState(() {
      currentView = tabNum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          RibbonButton(
            color: Colors.pink,
            leftMargin: 20.0,
            onTap: () {
              viewChange(0);
            },
            label: 'Logs',
          ),
          RibbonButton(
            leftMargin: 150.0,
            onTap: () {
              viewChange(1);
            },
            color: Colors.blue,
            label: 'Line of Business',
          ),
          RibbonButton(
            leftMargin: 280.0,
            onTap: () {
              viewChange(2);
            },
            color: Colors.green,
            label: 'Schedule',
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                height: 80.0,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 20.0, bottom: 20.0),
                        child: Image.asset('assets/logo/company_logo.jpeg'),
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 5.0),
                              child: CircleAvatar(
                                radius: 25.0,
                              ),
                            ),
                            Text(
                              'Hi User!',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, LoginPage.id, (route) => false);
                              },
                              child: Text(
                                'Logout',
                                style: GoogleFonts.roboto(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 30.0,
                                width: 150.0,
                                child: DigitalClock(
                                  digitAnimationStyle: Curves.elasticOut,
                                  is24HourTimeFormat: false,
                                  areaDecoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  hourMinuteDigitTextStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: viewList[currentView],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
