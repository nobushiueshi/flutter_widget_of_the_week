// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:flutter/material.dart';

// class SamplePage149 extends StatefulWidget {
//   const SamplePage149({
//     super.key,
//   });

//   @override
//   State<SamplePage149> createState() => _SamplePage149State();
// }

// class _SamplePage149State extends State<SamplePage149> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('firebase_analytics'),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               FilledButton(
//                 onPressed: () async {
//                   await FirebaseAnalytics.instance
//                       .logEvent(name: 'buttonClicked');
//                 },
//                 child: const Text('Firebase Analyticsへイベントを送信'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
