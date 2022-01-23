import 'package:flutter/material.dart';
import 'package:doctorappointment/widget/appbar.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: TopBar("Notifications"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: isSwitched? [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Notifications"),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: Colors.blueGrey,
                    activeColor: Colors.blue,
                  ),
                ],
              ),        
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.cyan ,
                  child: Center(child: Text("Mohamed reserved an appointment on Sunday")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.cyan ,
                  child: Center(child: Text("Alaa reserved an appointment on Monday")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.cyan ,
                  child: Center(child: Text("Alaa postponed his appointment on Tuesday")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.cyan ,
                  child: Center(child: Text("Mohamed changed his timing to 9:00 pm")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.cyan ,
                  child: Center(child: Text("Ahmed cancelled his appointment")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.cyan ,
                  child: Center(child: Text("Hany reserved an appointment on Monday")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.cyan ,
                  child: Center(child: Text("Don't forget Emad's second dose")),
                ),
              ),
        // condition ? true : false;
            ] : [
              //switch is off goes here
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Notifications"),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: Colors.blueGrey,
                    activeColor: Colors.blue,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
