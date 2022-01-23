import 'package:doctorappointment/widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:doctorappointment/theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:doctorappointment/services/auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  final _formkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Widget build(BuildContext context) {
    // final List<String> options = ['Male', 'Female'];
    // String temp = 'Male';
    return Scaffold(
      appBar: AppBar(
    centerTitle: true,
    title: Text(
      'Sign Up',
  ),
),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/doctors-.jpg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  // TextFormField(
                  //     controller: nameController,
                  //     decoration: InputDecoration(
                  //       hintText: 'Name',
                  //       prefixIcon: Icon(
                  //         Icons.person_outlined,
                  //         color: Colors.black,
                  //       ),
                  //     ),
                  //     validator: (value) {
                  //       if (value == null || value.isEmpty) {
                  //         return 'please enter your name';
                  //       }
                  //       return null;
                  //     }),
                  // const SizedBox(
                  //   height: 10.0,
                  // ),
                  TextFormField(
                      controller: EmailController,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(
                          Icons.person_outlined,
                          color: Colors.black,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter your Email';
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.black,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter your password';
                        }
                        return null;
                      }),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            // DropdownButtonFormField<String>(
            //   value: temp,
            //   decoration: InputDecoration(),
            //   items: options.map((e) {
            //     return DropdownMenuItem(
            //       value: e,
            //       child: Text('$e'),
            //     );
            //   }).toList(),
            //   // if the onChanged callback is null or the list of items is null
            //   // then the dropdown button will be disabled
            //   onChanged: (val) => setState(() => temp = val as String),
            // ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text(
                  'Signup',
                ),
                onPressed: () async {
                  if (_formkey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('processing data')),
                    );
                    await Provider.of<AuthService>(context, listen: false)
                        .signUp(EmailController.text, passwordController.text);
                    Navigator.pop(context);
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
