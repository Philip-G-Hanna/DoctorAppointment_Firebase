import 'package:flutter/material.dart';

class Drawerdoctor extends StatelessWidget {
  const Drawerdoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
              child: Text(
                'WELCOME',
                style: TextStyle(fontSize: 24, fontFamily: 'Tahoma'),
              ),
            ),
          ),
          ListTile(
            title: const Text('Home page'),
            onTap: () {
              Navigator.pushNamed(context,'/homedoctor');
            },
          ),
           ListTile(
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
          
       ListTile(
            title: const Text('View Appointments'),
            onTap: () {
              Navigator.pushNamed(context, '/viewappoint');
            },
          ),
           ListTile(
            title: const Text('Dr profile'),
            onTap: () {
              Navigator.pushNamed(context, '/drprofile');
            },
          ), 
        
          ListTile(
            title: const Text('Logout'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
