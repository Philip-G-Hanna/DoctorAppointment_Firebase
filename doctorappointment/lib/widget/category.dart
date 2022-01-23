
import 'package:flutter/material.dart';
import 'package:doctorappointment/main.dart';

class category extends  StatelessWidget {
  String img;
  String name;
  String drCount;
  category(this.img,this.name, this.drCount);


  @override
  Widget build(BuildContext context) {
  
      
     return GestureDetector(
        onTap: () {
         Navigator.pushNamed(context, "/details");
        },
        child: Container(
          width: 100,
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            color: Color(0xFF0077c6), //box color
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(img),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Color(0xffd9fffa).withOpacity(0.07),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  drCount,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
//style color for the category of doctors
