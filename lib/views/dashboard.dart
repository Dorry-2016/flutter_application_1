import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constant.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hi There',
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: appGrey,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Dashboard',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text('Home', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.album, color: Colors.white),
                title: Text('About Us', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/aboutus');
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.add_location, color: Colors.white),
                title: Text('Location', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.attach_email, color: Colors.white),
                title: Text('Email', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.white),
                title: Text('Logout', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
