import 'package:flutter/material.dart';
//import 'package:getwidget/getwidget.dart';
import 'package:doctorappointment/widget/category.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileUI(),
    );
  }
}

class ProfileUI extends StatefulWidget {
  ProfileUI({Key? key}) : super(key: key);

  @override
  _ProfileUIState createState() => _ProfileUIState();
}

class _ProfileUIState extends State<ProfileUI> {
  bool isObscurePassword = true;
  double _rating = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('User Name'),
              ),
              ListTile(
                title: const Text('Home page'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.popAndPushNamed(context, '/homepage');
                },
              ),
               ListTile(
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.popAndPushNamed(context, '/settings');
                },
              ),
              ListTile(
                title: const Text('Edit Profile'),
                onTap: () {
                  Navigator.pushNamed(context, '/editprofile');
                },
              ),
              ListTile(
                title: const Text('Rate'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
               ListTile(
                title: const Text('Dr Profile'),
                onTap: () {
                  Navigator.pop(context,'/drprofile');
                },
              ),
              ListTile(
                title: const Text('Logout'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Doctor profile'),
        ),
        body: Container(
            padding: EdgeInsets.only(left: 15, top: 20, right: 15),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: ListView(
                children: [
                  Center(
                      child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                              )
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/Profile.png'),
                            )),
                      ),
                    ],
                  )),
                  SizedBox(height: 30),
                  buildTextField("Full Name", "Philip George", false),
                  buildTextField(
                      "Email", "mariam1806559@miuegypt.edu.eg", false),
                  buildTextField("Doctor's Specialization", "Dentist", false),
                  buildTextField("Clinic - Address", "NasrStreet", false),
                  buildTextField("About", "Ain Shams university", false),
                  SizedBox(height: 30),
                  category("img", "name", "drCount")
                  // GFRating(
                  //   value: _rating,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       //_rating = value;
                  //     });
                  //   },
                  // ),
                ],
              ),
            )));
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        enabled: false,
        obscureText: isPasswordTextField ? isObscurePassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    icon: Icon(Icons.remove_red_eye, color: Colors.grey),
                    onPressed: () {
                      setState(() {
                        isObscurePassword = !isObscurePassword;
                      });
                    },
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 5),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
      ),
    );
  }
}
