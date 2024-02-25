// import 'package:flutter/material.dart';
// import 'package:location/location.dart';

// class SamplePage090 extends StatefulWidget {
//   const SamplePage090({
//     super.key,
//   });

//   @override
//   State<SamplePage090> createState() => _SamplePage090State();
// }

// class _SamplePage090State extends State<SamplePage090> {
//   LocationData? locationData;

//   @override
//   void initState() {
//     super.initState();

//     Future(() async {
//       final location = Location();

//       bool serviceEnabled;
//       PermissionStatus permissionGranted;

//       serviceEnabled = await location.serviceEnabled();
//       if (!serviceEnabled) {
//         serviceEnabled = await location.requestService();
//         if (!serviceEnabled) {
//           return;
//         }
//       }

//       permissionGranted = await location.hasPermission();
//       if (permissionGranted == PermissionStatus.denied) {
//         permissionGranted = await location.requestPermission();
//         if (permissionGranted != PermissionStatus.granted) {
//           return;
//         }
//       }
//       locationData = await location.getLocation();
//       setState(() {
//         debugPrint(locationData!.latitude.toString());
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Location'),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: locationData != null
//             ? Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text('latitude : ${locationData!.latitude}'),
//                     Text('longitude : ${locationData!.longitude}'),
//                     Text('accuracy : ${locationData!.accuracy}'),
//                     Text('altitude : ${locationData!.altitude}'),
//                     Text('speed : ${locationData!.speed}'),
//                     Text('speedAccuracy : ${locationData!.speedAccuracy}'),
//                     Text('heading : ${locationData!.heading}'),
//                     Text('time : ${locationData!.time}'),
//                     Text('isMock : ${locationData!.isMock}'),
//                   ],
//                 ),
//               )
//             : const Center(
//                 child: CircularProgressIndicator(),
//               ),
//       ),
//     );
//   }
// }
