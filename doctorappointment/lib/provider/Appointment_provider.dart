import 'package:doctorappointment/screens/appointments.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:doctorappointment/model/appointment.dart';

class AppoimentProvider extends ChangeNotifier {
  appoiment appoiments = appoiment(
      "mohamed", "Heart", "complete", "assets/doc.PNG", "17/2/2021", "20:10");

  List<appoiment> x = [
    appoiment(
        "mohamed", "Heart", "complete", "assets/doc.PNG", "17/2/2021", "20:10"),
  ];

  List<appoiment> get appoimentlist => x;

  addAppoiment(String DrName, String time, String date, String DrType) {
    appoiments.DrName = DrName;
    appoiments.time = time;
    appoiments.date = date;
    appoiments.DrType = DrType;
    x.add(appoiments);
    notifyListeners();
  }
}
