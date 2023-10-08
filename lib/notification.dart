import 'package:flutter/material.dart';

class FirebaseNotifications extends StatefulWidget {
  const FirebaseNotifications({super.key});

  @override
  State<FirebaseNotifications> createState() => _FirebaseNotificationsState();
}

class _FirebaseNotificationsState extends State<FirebaseNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        centerTitle: true,
        title: const Text(
          "Firebase Notifications",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic),
        ),
        actions: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 18.0),
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Positioned(
                left: 14,
                  top: 4,
                  child: Container(
                alignment: Alignment.center,
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(8)),
                child: const Text(
                  "8",
                  style: TextStyle(color: Colors.white,fontSize: 10),
                ),
              ))
            ],
          )
        ],
      ),
      body: const Center(
        child: Text("Welcome in firebase notifications"),
      ),
    );
  }
}
