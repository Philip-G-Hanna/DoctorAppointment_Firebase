import 'package:doctorappointment/widget/appbar.dart';
import 'package:doctorappointment/widget/drawer2.dart';
import 'package:flutter/material.dart';
import 'package:doctorappointment/screens/doctor_details.dart';
import 'package:doctorappointment/widget/toprated.dart';
import 'package:doctorappointment/widget/category.dart';
import 'package:doctorappointment/widget/appointmentcard.dart';

class Doctorhome extends StatefulWidget {
  const Doctorhome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => DoctorhomeState();
}

class DoctorhomeState extends State<Doctorhome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xFF00abff),
        drawer: Drawerdoctor(),
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
          child: TopBar("Doctor Appointment"),
        ),
        
        body: Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
            child: ListView(scrollDirection: Axis.vertical, children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        "Hi,Doctor",
                        
                        style: TextStyle(
                          color: Color(0xff363636),
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 20),
                      child: Text(
                        "Welcome Back",
                        style: TextStyle(
                          color: Color(0xff363636),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                      width: size.width,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF00abff),
                            offset: Offset(0, 10),
                            blurRadius: 15,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                         // Flexible bt3mal nfs el hga bt3t el expanded
                          Expanded(
                            flex: 5,
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: TextField(
                                maxLines: 1,
                                autofocus: false,
                                style: TextStyle(
                                    color: Color(0xFF00abff), fontSize: 20),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search..',
                                ),
                                cursorColor: Color(0xFF00abff),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF0077c6), //search color
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   width: size.width,
                    //   margin: EdgeInsets.only(top: 20, left: 20),
                    //   child: Stack(
                    //     children: [
                    //       Container(
                    //         child: Text(
                    //           'Appointments of the Day',
                    //           style: TextStyle(
                    //             color: Color(0xff363636),
                    //             fontSize: 20,
                    //             fontFamily: 'Roboto',
                    //             fontWeight: FontWeight.w700,
                    //           ),
                    //         ),
                    //       ),
                    //         Container(
                    //   height: 100,
                    //   margin: EdgeInsets.only(top: 30, left: 4),
                    //   child: ListView(
                    //     scrollDirection: Axis.horizontal,
                    //     children: [
                    //      appointmentcard("assets/teeth.jpg", "Nada Ahmed", "23/1/2022",
                    //     "12:00PM", 320),
                    //     SizedBox(
                    //      height: 5,
                    // ),
                    //  appointmentcard("assets/teeth.jpg", "Mariam", "23/1/2022",
                    //     "12:40PM", 320),
                    //     SizedBox(
                    //      height: 5,
                    // ),
                    //     ],
                    //   ),
                    // ),
                    
                     //   ],
                     // ),
                   // ),
                   
                   ] )])));
  }
}
