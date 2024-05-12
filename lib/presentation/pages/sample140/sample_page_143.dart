// import 'dart:io';

// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:path_provider/path_provider.dart';

// class SamplePage143 extends StatefulWidget {
//   const SamplePage143({
//     super.key,
//   });

//   @override
//   State<SamplePage143> createState() => _SamplePage141State();
// }

// class _SamplePage141State extends State<SamplePage143> {
//   bool uploaded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('firebase_storage'),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               ElevatedButton(
//                 onPressed: () async {
//                   final storage = FirebaseStorage.instance.ref();
//                   final images = storage.child('images');
//                   final sampleImageRef = images.child('sample.png');

//                   final byteData = await rootBundle.load('assets/sample.png');
//                   final file = File(
//                     '${(await getTemporaryDirectory()).path}/sample.png',
//                   );
//                   await file.create(recursive: true);
//                   await file.writeAsBytes(
//                     byteData.buffer.asUint8List(
//                       byteData.offsetInBytes,
//                       byteData.lengthInBytes,
//                     ),
//                   );

//                   await sampleImageRef.putFile(file);
//                   setState(() {
//                     uploaded = true;
//                   });
//                 },
//                 child: const Text('Upload Images'),
//               ),
//               const SizedBox(height: 20),
//               if (uploaded)
//                 FutureBuilder(
//                   initialData: '',
//                   future: FirebaseStorage.instance
//                       .ref()
//                       .child('images')
//                       .child('sample.png')
//                       .getDownloadURL(),
//                   builder: (context, snapshot) {
//                     if (snapshot.connectionState == ConnectionState.waiting) {
//                       return const CircularProgressIndicator();
//                     }

//                     if (snapshot.hasError) {
//                       return const Icon(Icons.error);
//                     }

//                     return Image.network(snapshot.data!);
//                   },
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
