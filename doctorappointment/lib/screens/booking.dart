import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:doctorappointment/widget/doctor_dates.dart';
import 'package:doctorappointment/widget/doctor_timing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:doctorappointment/widget/appbar.dart';

class Booking extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Bookingpage();
}

class _Bookingpage extends State<Booking> {
  @override
  List select1 = [true, false, false, false, false, false];
  List select2 = [true, false, false, false, false, false];
  List select3 = [true, false, false, false];

  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF00abff),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Color(0xFF00abff),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Container(
                margin: EdgeInsets.only(left: 30, bottom: 30),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Image.asset(
                        "assets/doctor.jpg",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Text(
                              'Dr. Fred Mask',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              'Heart surgen',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Text(
                              'Rating: 4.5',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Text(
                'April 2020',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select3.length; i++) {
                            select3[i] = false;
                          }
                          select3[0] = true;
                        });
                      },
                      child: demoDates("Mon", "21", select3[0])),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select3.length; i++) {
                            select3[i] = false;
                          }
                          select3[1] = true;
                        });
                      },
                      child: demoDates("Tues", "22", select3[1])),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select3.length; i++) {
                            select3[i] = false;
                          }
                          select3[2] = true;
                        });
                      },
                      child: demoDates("Wed", "23", select3[2])),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select3.length; i++) {
                            select3[i] = false;
                          }
                          select3[3] = true;
                        });
                      },
                      child: demoDates("thurs", "24", select3[3])),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Text(
                'Morning',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(right: 20),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 2.7,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            for (var i = 0; i < select1.length; i++) {
                              select1[i] = false;
                            }
                            select1[0] = true;
                          });
                        },
                        child: doctorTimingsData("08:30 AM", select1[0])),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            for (var i = 0; i < select1.length; i++) {
                              select1[i] = false;
                            }
                            select1[1] = true;
                          });
                        },
                        child: doctorTimingsData("09:20 AM", select1[1])),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            for (var i = 0; i < select1.length; i++) {
                              select1[i] = false;
                            }
                            select1[2] = true;
                          });
                        },
                        child: doctorTimingsData("10:45 AM", select1[2])),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            for (var i = 0; i < select1.length; i++) {
                              select1[i] = false;
                            }
                            select1[3] = true;
                          });
                        },
                        child: doctorTimingsData("11:00 AM", select1[3])),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select1.length; i++) {
                            select1[i] = false;
                          }
                          select1[4] = true;
                        });
                      },
                      child: doctorTimingsData("12:30 AM", select1[4]),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select1.length; i++) {
                            select1[i] = false;
                          }
                          select1[5] = true;
                        });
                      },
                      child: doctorTimingsData("01:00 AM", select1[5]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 30),
              child: Text(
                'Evening',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 2.6,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select2.length; i++) {
                            select2[i] = false;
                          }
                          select2[0] = true;
                        });
                      },
                      child: doctorTimingsData("10:30 AM", select2[0])),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select2.length; i++) {
                            select2[i] = false;
                          }
                          select2[1] = true;
                        });
                      },
                      child: doctorTimingsData("11:00 AM", select2[1])),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select2.length; i++) {
                            select2[i] = false;
                          }
                          select2[2] = true;
                        });
                      },
                      child: doctorTimingsData("11:30 AM", select2[2])),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select2.length; i++) {
                            select2[i] = false;
                          }
                          select2[3] = true;
                        });
                      },
                      child: doctorTimingsData("12:00 PM", select2[3])),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        for (var i = 0; i < select2.length; i++) {
                          select2[i] = false;
                        }
                        select2[4] = true;
                      });
                    },
                    child: doctorTimingsData("12:30 PM", select2[4]),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        for (var i = 0; i < select2.length; i++) {
                          select2[i] = false;
                        }
                        select2[5] = true;
                      });
                    },
                    child: doctorTimingsData("01:00 PM", select2[5]),
                  ),
                ],
              ),
            ),
            Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 54,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF00abff),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x17000000),
                      offset: Offset(0, 15),
                      blurRadius: 15,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/appoiment");
                  },
                  child: Text(
                    'Make An Appointment',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
