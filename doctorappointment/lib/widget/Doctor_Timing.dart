import 'package:flutter/material.dart';

class doctorTimingsData extends StatelessWidget {
  String time;
  bool isSelected;
  doctorTimingsData(this.time, this.isSelected);


  Widget build(BuildContext context) {

    
    return isSelected
        ? Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            decoration: BoxDecoration(
              color: Color(0xFF00abff),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 2),
                  child: Icon(
                    Icons.access_time,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 2),
                  child: Text(
                    '08:30 AM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ],
            ),
          )
        : Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            decoration: BoxDecoration(
              color: Color(0xffEEEEEE),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 2),
                  child: Icon(
                    Icons.access_time,
                    color: Colors.black,
                    size: 18,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 2),
                  child: Text(
                    '09:00 AM',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
