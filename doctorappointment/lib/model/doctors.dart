import 'package:doctorappointment/widget/category.dart';
import 'package:flutter/material.dart';
//import 'package:provider/appointment_provider.dart';

class Doctor{
  String name;
  String category;
  String description;
  String location;
  String reviews;
  double fees;
  double rating;
  String image;

  Doctor(
    this.name,
    this.category,
    this.description,
    this.location,
    this.fees,
    this.rating,
    this.reviews,
    this.image,
  );
  String get doctor_name {
    return name;
  }

  String get doctor_category {
    return category;
  }

  String get doctor_description {
    return description;
  }

  String get doctor_location {
    return location;
  }

  double get doctor_fees {
    return fees;
  }

  double get doctor_rate {
    return rating;
  }

  String get doctor_review {
    return reviews;
  }

  String get doctor_image {
    return image;
  }
}
