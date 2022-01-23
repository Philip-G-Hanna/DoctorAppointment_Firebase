import 'package:doctorappointment/services/auth.dart';
import 'package:doctorappointment/widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController EmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    centerTitle: true,
    title: Text(
      'Login',
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
                    'assets/doctorwallpaper.jpg',
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
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text('Login'),
                onPressed: () async {
                  if (_formkey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Logged in')),
                    );
                    await Provider.of<AuthService>(context, listen: false)
                        .signIn(EmailController.text, passwordController.text);
                    Navigator.pushNamed(context, '/home');
                  }
                  print(EmailController.text);
                  print(passwordController.text);
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
