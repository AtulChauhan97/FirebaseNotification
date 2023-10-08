
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationService{

 static Future<void>  notification()async{

    var noti = await FirebaseMessaging.instance.setAutoInitEnabled(true);
    return noti;

  }

  static void token()async{
    final fcmToken = await FirebaseMessaging.instance.getToken();
    debugPrint("FCMToken $fcmToken");
  }



}