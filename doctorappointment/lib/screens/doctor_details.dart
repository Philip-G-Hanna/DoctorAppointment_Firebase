import 'package:flutter/material.dart';
import 'package:doctorappointment/widget/toprated.dart';
import 'package:doctorappointment/widget/doctor_name.dart';
import 'package:provider/provider.dart';
import 'booking.dart';
import 'package:doctorappointment/widget/appbar.dart';

class DoctorDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: TopBar("Doctor List"),
      ),
      body: Container(
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30))),
          child: ListView(scrollDirection: Axis.vertical, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                  // width: size.width,
                  height: 50,
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
                      Expanded(
                        flex: 5,
                        child: Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: TextField(
                            maxLines: 1,
                            autofocus: false,
                            style: TextStyle(
                                color: Color(0xFF00abff), fontSize: 15),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for doctor..',
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
                SizedBox(
                  height: 20,
                ),

                doctor_name("assets/dr.jpg", "Dr.Yehia Ebeid", "Density",
                    "250L.E", "Heliopolis:  sherton", 450),
                SizedBox(
                  height: 10,
                ),
                doctor_name("assets/doctor.jpg", "DR. Alyaa Abd Elhameed",
                    "density", "200L.E", "Heliopolis:  ard el golf", 450),
                SizedBox(
                  height: 10,
                ),
                doctor_name("assets/teeth.jpg", "Dr. Nour El Den", "Dentisty",
                    "200L.E", " Dr. Nour El Den", 450),
                SizedBox(
                  height: 10,
                ),
                doctor_name("assets/accounts.png", "Dr. Ahmed Khaed",
                    "Dentisty", "250L.E", " Nasr City, Cairo Governorate", 450),
                SizedBox(
                  height: 10,
                ),
                doctor_name("assets/accounts.png", "Dr. Norhan el berry",
                    "Dentisty", "200L.E", " Masr el gdeda, ", 450),
                SizedBox(
                  height: 10,
                ),
                doctor_name("assets/doc.PNG", "Dr. Ahmed Mohsin", "Dentisty",
                    "300L.E", " clinic 208 , fifth settlement", 450),
                SizedBox(
                  height: 10,
                ),
                doctor_name("assets/accounts.png", "Dr. Daniel Hany",
                    "Dentisty", "200L.E", "Heliopolis: obour builidings", 450),
                SizedBox(
                  height: 10,
                ),
                doctor_name("assets/accounts.png", "Dr. seif eldin", "Dentisty",
                    "250L.E", " New cairo:north 90th", 450),
                SizedBox(
                  height: 10,
                ),
                doctor_name("assets/accounts.png", "Dr. mohamed hamedy",
                    "Dentisty", "250L.E", " New cairo:north 90th", 450),
                SizedBox(
                  height: 10,
                ),

//Neurology
                doctor_name("assets/Neurology.PNG", "Dr. Ahmed Zahran",
                    "Neurology", "600L.E", " Heliopolis: Maqrezy", 450),
                SizedBox(
                  height: 10,
                ),
                doctor_name("assets/doc.PNG", "Dr. Mohamed Tawfik", "Neurology",
                    "800L.E", " Heliopolis: El merghani", 450),
                SizedBox(
                  height: 10,
                ),
                doctor_name("assets/accounts.png", "Dr. Ghada Farag",
                    "Neurology", "400L.E", "Heliopolis: El merghani", 450),
                SizedBox(
                  height: 10,
                ),
                doctor_name("assets/accounts.png", "Dr. Alia Hassan",
                    "Neurology", "400L.E", " Heliopolis: El Nasr", 450),
                SizedBox(
                  height: 10,
                ),
                doctor_name("assets/accounts.png", "Dr. mohamed Ali",
                    "Neurology", "300L.E", " Heliopolis: Maqrezy", 450),
                SizedBox(
                  height: 10,
                ),

                //Orthopedics
                doctor_name("assets/Neurology.PNG", "Dr. Baraa Hassan ",
                    "Orthopedics", "250L.E", " Heliopolis: nozha street", 450),
                SizedBox(
                  height: 10,
                ),
                doctor_name("assets/doc.PNG", "Dr. Hazem Mhmoud", "Orthopedics",
                    "300L.E", " Heliopolis:Lbn elwardy", 450),
                SizedBox(
                  height: 10,
                ),
                doctor_name("assets/accounts.png", "Dr. Hazem Shokair",
                    "Orthopedics", "300L.E", "Heliopolis: hegazi", 450),
                SizedBox(
                  height: 10,
                ),
                doctor_name(
                    "assets/accounts.png",
                    "Dr. Andrew Aghabious",
                    "Orthopedics",
                    "200L.E",
                    " Heliopolis: Abdelhay fathy st",
                    450),
                SizedBox(
                  height: 10,
                ),
                doctor_name("assets/accounts.png", "Dr. Ahmed Galal Mansour",
                    "Orthopedics", "400L.E", " Heliopolis: Nozha", 450),
                SizedBox(
                  height: 10,
                ),

                //cardiology and vascular disease
                doctor_name(
                    "assets/cardiology.PNG",
                    "Dr. Mohamed Ramdon",
                    "cardiology disease",
                    "400",
                    " Heliopolis: nozha street",
                    450),
                SizedBox(
                  height: 10,
                ),
                doctor_name("assets/doc.PNG", "Dr. sherif hussein",
                    "cardiology disease", "400", " Heliopolis:El fayoum", 450),
                SizedBox(
                  height: 10,
                ),
                doctor_name(
                    "assets/accounts.png",
                    "Dr. waleed abdelfatah",
                    "cardiology disease",
                    "200",
                    "Heliopolis: el sabaq street",
                    450),
                SizedBox(
                  height: 10,
                ),
                doctor_name(
                    "assets/accounts.png",
                    "Dr. Ayman osama",
                    "cardiology disease",
                    "250",
                    " Heliopolis: Gesr El Suez",
                    450),
              ],
            )
          ])),
    );
  }
}
