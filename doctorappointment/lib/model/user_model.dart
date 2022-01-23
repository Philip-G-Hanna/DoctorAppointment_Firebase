import 'package:doctorappointment/widget/category.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:doctorappointment/model/appointment.dart';

class User{
  String name;
  String email;
  String password;
  String phone_number;
  String image;
  List <appoiment> my_appointments;

  User(
    this.name,
    this.email,
    this.password,
    this.phone_number,
    this.my_appointments,
    this.image,
  );
  String get user_name {
    return name;
  }

  String get user_email {
    return email;
  }

  String get user_password{
    return password;
  }

  String get user_phone_number{
    return phone_number;
  }

  List <appoiment> get my_appointment{
    return my_appointment;
  }

  String get doctor_image {
    return image;
  }
}
