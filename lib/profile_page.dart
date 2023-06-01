import 'package:flutter/material.dart';

class Profile_Page extends StatelessWidget {
  const Profile_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Text(
                'Profile Page',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          const Profile_Pic(),
          const SizedBox(height: 10),
          user_info,
          const SizedBox(height: 10),
          user_data,
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: Text('Follow',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ),
                  ),
                ),
                OutlinedButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 30.0),
                      child: Text('Message'),
                    ))
              ],
            ),
          ),
          const Divider(
            height: 20,
          ),
          GridView.count(
            crossAxisCount: 2,
            children: [
              Image.network('https://unsplash.com/photos/QgYG5WKXsKs'),
              Image.network('https://unsplash.com/photos/QgYG5WKXsKs')
            ],
          )
        ],
      ),
    );
  }
}

class Profile_Pic extends StatelessWidget {
  const Profile_Pic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 80,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1685432051879-31fa592be8a3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
    );
  }
}

const user_info = Column(
  children: [
    Text(
      'Eren Jager',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
    ),
    Text(
      '@Eren Jager',
      style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
    )
  ],
);

const user_data = Padding(
  padding: EdgeInsets.only(left: 15),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        children: [
          Text(
            'Post',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          ),
          Text(
            '7',
            style: TextStyle(
                fontWeight: FontWeight.w500, color: Colors.grey, fontSize: 20),
          )
        ],
      ),
      Column(
        children: [
          Text(
            'Followers',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          ),
          Text(
            '1035',
            style: TextStyle(
                fontWeight: FontWeight.w500, color: Colors.grey, fontSize: 20),
          )
        ],
      ),
      Column(
        children: [
          Text(
            'Follow',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          ),
          Text(
            '36',
            style: TextStyle(
                fontWeight: FontWeight.w500, color: Colors.grey, fontSize: 20),
          )
        ],
      )
    ],
  ),
);
