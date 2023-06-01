import 'package:flutter/material.dart';

class Profile_Page extends StatelessWidget {
  const Profile_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Text(
                'Profile Page',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1685432051879-31fa592be8a3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
          ),
        ],
      ),
    );
  }
}
