import 'package:doctorappointment/provider/Appointment_provider.dart';
import 'package:doctorappointment/screens/appointments.dart';
import 'package:doctorappointment/screens/chat_screen.dart';
import 'package:doctorappointment/screens/editprofile.dart';
import 'package:doctorappointment/screens/homedoctor.dart';
import 'package:doctorappointment/screens/test.dart';
import 'package:doctorappointment/screens/test2.dart';
//import 'package:doctor_appointment/screens/google_map.dart';
import 'package:doctorappointment/screens/viewappointments.dart';
import 'package:doctorappointment/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:typicons_flutter/typicons_flutter.dart';
import 'screens/signup.dart';
import 'screens/home_page.dart';
import 'screens/doctor_details.dart';
import 'screens/login.dart';
import 'screens/editprofile.dart';
import 'screens/first_screen.dart';
import 'screens/booking.dart';
import 'screens/notifications.dart';
import 'package:doctorappointment/screens/ratingpage.dart';
import 'screens/drprofile.dart';
import 'screens/aboutus.dart';
import 'screens/settings.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AppoimentProvider())],
      child: MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AuthService(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doctor Appointment',
        initialRoute: '/',
        routes: {

            '/': (context) => firstscreen(),
            '/signup': (context) => SignUp(),
            '/login': (context) => Login(),
            '/home': (context) => HomePage(),
            '/details': (context) => DoctorDetailPage(),
            '/editprofile': (context) => EditProfileUI(),
            '/doctorreserve': (context) => Booking(),
            '/rate': (context) => RatingsPage(),
            '/notify': (context) => Notifications(),
            '/viewappoint': (context) => ViewAppointment(),
            '/appoiment': (context) => Appoiments(),
            '/drprofile': (context) => Drprofile(),
            '/aboutus': (context) => AboutUs(),
            '/settings': (context) => SettingsPage(),
            '/homedoctor': (context) => Doctorhome(),
            '/chat':(context) => ChatScreen(),
            //'/login':(context) => LoginPage(),
            //'/signup':(context) => SignupPage()
        },
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.lightBlue,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   final _fbApp =Firebase.initializeApp();
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         Provider<AuthenticationService>(
//           create: (_) => AuthenticationService(FirebaseAuth.instance),
//         ),
//         StreamProvider(
//           create: (context) => context.read<AuthenticationService>().authStateChanges,
//           initialData: null,
//         )
//       ],
//       child: MaterialApp(
//         title: 'Doctor Appointment',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//           visualDensity: VisualDensity.adaptivePlatformDensity,
//         ),
//          initialRoute: '/',
//          routes: {
//        '/': (context) => firstscreen(),
//        '/signup': (context) => SignupPage(),
//        '/login': (context) => LoginPage(),
//        '/home': (context) => HomePage(),
//        '/details': (context) => DoctorDetailPage(),
//        '/editprofile': (context) => EditProfileUI(),
//        '/doctorreserve': (context) => Booking(),
//        '/rate': (context) => RatingsPage(),
//        '/notify': (context) => Notifications(),
//        '/viewappoint': (context) => ViewAppointment(),
//        '/appoiment': (context) => Appoiments(),
//        '/drprofile': (context) => Drprofile(),
//         '/aboutus': (context) => AboutUs(),
//        '/settings': (context) => SettingsPage(),
//      },
//         home: FutureBuilder(
//           future: _fbApp,
//           builder: (context,snapshot){
//             if (snapshot.hasError){
//               //return Dialog();
//               return Text("text");

//             }else if (snapshot.hasData){
//               return Text("text");
//             }
//             else {
//              // return CircularProgressIndicator();
//              return Text("text2");
//             }
//           }
//         ),
//       ),
//     );
//   }
// }

// class AuthenticationWrapper extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final firebaseUser = context.watch<User?>();

//     if (firebaseUser != null) {
//       return HomePage();
//     }
//     return LoginPage();
//   }
// }
