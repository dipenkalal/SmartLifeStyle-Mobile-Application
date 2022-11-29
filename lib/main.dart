
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sls/Category.dart';
import 'package:sls/auth_controller.dart';
import 'package:sls/login_screen.dart';
import 'package:sls/register_screen.dart';
import 'package:sls/splash_screen.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class ColorConstants {
  static const richWhite = Color(0xFFFDFEFF);
  static const kSecondaryColor = Color(0xFF444FAB);
  static const kThirdSecondaryColor = Color(0xFF5E6BD8);
  static const kGravishBlueColor = Color(0xFF9BA1D2);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: AnimatedSplashScreen(splash:
      'assets/hello.png',
          //Icons.home,
          duration: 3000,
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: ColorConstants.richWhite,
          nextScreen: SplashScreen()),
    );
  }
}


// class PermissionHandlerWidget extends StatefulWidget {
//   /// Create a page containing the functionality of this plugin
//   static ExamplePage createPage() {
//     return ExamplePage(
//         Icons.location_on, (context) => PermissionHandlerWidget());
//   }
//
//   @override
//   _PermissionHandlerWidgetState createState() =>
//       _PermissionHandlerWidgetState();
// }
//
// class _PermissionHandlerWidgetState extends State<PermissionHandlerWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ListView(
//           children: Permission.values
//               .where((permission) {
//             if (Platform.isIOS) {
//               return permission != Permission.unknown &&
//                   permission != Permission.sms &&
//                   permission != Permission.storage &&
//                   permission != Permission.ignoreBatteryOptimizations &&
//                   permission != Permission.accessMediaLocation &&
//                   permission != Permission.activityRecognition &&
//                   permission != Permission.manageExternalStorage &&
//                   permission != Permission.systemAlertWindow &&
//                   permission != Permission.requestInstallPackages &&
//                   permission != Permission.accessNotificationPolicy &&
//                   permission != Permission.bluetoothScan &&
//                   permission != Permission.bluetoothAdvertise &&
//                   permission != Permission.bluetoothConnect;
//             } else {
//               return permission != Permission.unknown &&
//                   permission != Permission.mediaLibrary &&
//                   permission != Permission.photos &&
//                   permission != Permission.photosAddOnly &&
//                   permission != Permission.reminders &&
//                   permission != Permission.appTrackingTransparency &&
//                   permission != Permission.criticalAlerts;
//             }
//           })
//               .map((permission) => PermissionWidget(permission))
//               .toList()),
//     );
//   }
// }
//
//
// class PermissionWidget extends StatefulWidget {
//   /// Constructs a [PermissionWidget] for the supplied [Permission]
//   const PermissionWidget(this._permission);
//
//   final Permission _permission;
//
//   @override
//   _PermissionState createState() => _PermissionState(_permission);
// }
//   class _PermissionState extends State<PermissionWidget> {
//   _PermissionState(this._permission);
//
//   final Permission _permission;
//   PermissionStatus _permissionStatus = PermissionStatus.denied;
//
//   @override
//   void initState() {
//   super.initState();
//
//   _listenForPermissionStatus();
//   }
//
//   void _listenForPermissionStatus() async {
//   final status = await _permission.status;
//   setState(() => _permissionStatus = status);
//   }
//
//   Color getPermissionColor() {
//   switch (_permissionStatus) {
//   case PermissionStatus.denied:
//   return Colors.red;
//   case PermissionStatus.granted:
//   return Colors.green;
//   case PermissionStatus.limited:
//   return Colors.orange;
//   default:
//   return Colors.grey;
//   }
//   }
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         _permission.toString(),
//         style: Theme.of(context).textTheme.bodyText1,
//       ),
//       subtitle: Text(
//         _permissionStatus.toString(),
//         style: TextStyle(color: getPermissionColor()),
//       ),
//       trailing: (_permission is PermissionWithService)
//           ? IconButton(
//           icon: const Icon(
//             Icons.info,
//             color: Colors.white,
//           ),
//           onPressed: () {
//             checkServiceStatus(
//                 context, _permission as PermissionWithService);
//           })
//           : null,
//       onTap: () {
//         requestPermission(_permission);
//       },
//     );
//   }
//   void checkServiceStatus(
//       BuildContext context, PermissionWithService permission) async {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       content: Text((await permission.serviceStatus).toString()),
//     ));
//   }
//
//   Future<void> requestPermission(Permission permission) async {
//     final status = await permission.request();
//
//     setState(() {
//       print(status);
//       _permissionStatus = status;
//       print(_permissionStatus);
//     });
//   }
//
// }
//
//
