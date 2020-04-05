import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.red,
      child: Center(
        child: Text('Profile'),
      ),
    );
  }
}
