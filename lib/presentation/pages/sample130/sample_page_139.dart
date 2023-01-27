// import 'package:firebase_remote_config/firebase_remote_config.dart';
// import 'package:flutter/material.dart';

// class SamplePage139 extends StatefulWidget {
//   const SamplePage139({
//     super.key,
//   });

//   @override
//   SamplePage139State createState() => SamplePage139State();
// }

// class SamplePage139State extends State<SamplePage139> {
//   String message = '';

//   @override
//   void initState() {
//     super.initState();

//     Future(() async {
//       final remoteConfig = FirebaseRemoteConfig.instance;
//       await remoteConfig.setConfigSettings(
//         RemoteConfigSettings(
//           fetchTimeout: const Duration(minutes: 1),
//           minimumFetchInterval: const Duration(minutes: 2),
//         ),
//       );
//       await remoteConfig.setDefaults(const {
//         'message_text': 'Hello, Flutter!',
//       });
//       await remoteConfig.fetchAndActivate();

//       setState(() {
//         message = remoteConfig.getString('message_text');
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('firebase_remote_config'),
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Text(message),
//         ),
//       ),
//     );
//   }
// }
