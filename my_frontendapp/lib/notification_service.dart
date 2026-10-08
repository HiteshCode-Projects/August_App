import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationService {
  static Future initialize() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    await messaging.requestPermission();

    String? token = await messaging.getToken();

    print("Devicee token");

    print(token);

    FirebaseMessaging.onMessage.listen((RemoteMessage message){

             print("Notification received");

             print(message.notification?.title);
             print(message.notification?.body);

    })
  }
}
