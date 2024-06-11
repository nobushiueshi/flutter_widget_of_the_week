// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'dart:math' as math;

// class SamplePage148 extends StatefulWidget {
//   const SamplePage148({
//     super.key,
//   });

//   @override
//   State<SamplePage148> createState() => _SamplePage148State();
// }

// class _SamplePage148State extends State<SamplePage148> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('cloud_firestore'),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               FilledButton(
//                 onPressed: () async {
//                   const pathToUsers = 'users';
//                   final usersRef =
//                       FirebaseFirestore.instance.collection(pathToUsers);
//                   final newUser = {
//                     'id': DateTime.now().millisecondsSinceEpoch,
//                     'name': 'SampleUser',
//                     'age': math.Random().nextInt(100),
//                   };
//                   await usersRef.add(newUser);
//                 },
//                 child: const Text('Firestoreにユーザーを登録'),
//               ),
//               const SizedBox(height: 20),
//               FilledButton(
//                 onPressed: () async {
//                   const pathToUsers = 'users';
//                   final usersRef =
//                       FirebaseFirestore.instance.collection(pathToUsers);
//                   final users = await usersRef.get();

//                   for (var i = 0; i < users.docs.length; i++) {
//                     // ignore: avoid_print
//                     print(users.docs[i].data());
//                   }
//                 },
//                 child: const Text('Firestoreのユーザーを一覧で取得'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
