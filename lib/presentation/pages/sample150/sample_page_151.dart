// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class SamplePage151 extends StatefulWidget {
//   const SamplePage151({
//     super.key,
//   });

//   @override
//   State<SamplePage151> createState() => _SamplePage151State();
// }

// class _SamplePage151State extends State<SamplePage151> {
//   final emailAddress = TextEditingController(text: '');
//   final password = TextEditingController(text: '');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('firebase_auth'),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Form(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   TextField(
//                     controller: emailAddress,
//                     decoration: const InputDecoration(
//                       icon: Icon(Icons.mail_outlined),
//                       label: Text('メールアドレス'),
//                     ),
//                   ),
//                   TextField(
//                     controller: password,
//                     obscureText: true,
//                     decoration: const InputDecoration(
//                       icon: Icon(Icons.password_outlined),
//                       label: Text('パスワード'),
//                     ),
//                   ),
//                   const SizedBox(height: 120),
//                   FilledButton(
//                     onPressed: () async {
//                       try {
//                         await FirebaseAuth.instance
//                             .createUserWithEmailAndPassword(
//                           email: emailAddress.text,
//                           password: password.text,
//                         );
//                       } on FirebaseAuthException catch (e) {
//                         if (e.code == 'weak-password') {
//                           // ignore: avoid_print
//                           print('The password provided is too weak.');
//                         } else if (e.code == 'email-already-in-use') {
//                           // ignore: avoid_print
//                           print('The account already exists for that email.');
//                         }
//                       } catch (e) {
//                         // ignore: avoid_print
//                         print(e);
//                       }
//                     },
//                     child: const Text('ユーザー登録'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
