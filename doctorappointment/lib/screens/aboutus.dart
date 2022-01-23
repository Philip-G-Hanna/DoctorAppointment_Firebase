import 'package:flutter/material.dart';
import 'package:doctorappointment/widget/appbar.dart';
import 'package:doctorappointment/widget/drawer.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AboutUsState();
}

class AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(title: Text("About Us")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: Text(
                        "Dr. Nour El Din Mostafa Center Is One Of The Largest Dental Clinics All Over The World Constructed In Egypt On An Area Over 2000 M2, Having More Than 20 Dental Clinics And 250 Employees. Our Dental Team Composed Of Highly Qualified Consultants And Specialists Having Respectful Well Known International Degrees As Australian And American Board, Masters And Ph.D. Degrees And Membership Of Royal College Of Eden Bar. Dr Nour Center Cofounded By Dr. Nour El-Din Mustafa In 2000 Based On The ‎Idea Of “Immediate Cosmetic Dentistry Without Pain” Instead Of ‎Visiting The Dental Clinic More Frequently To Do ‎The Cosmetic Procedure. Now The Patient Can Get All The Necessary ‎Treatment Immediately Without Feeling Any Pain, Just By One Or ‎Two Visits",
                        style: TextStyle(
                          color: Color(0xff363636),
                          fontSize: 15,
                        ),
                      ),
                      
                    ),
                  
             ] ),));
  }}