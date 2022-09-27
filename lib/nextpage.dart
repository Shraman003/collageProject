// // navi
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_collage/image_collage.dart';

//
class Kuvait extends StatelessWidget {
//   final File? imageFile1;
//   final File? imageFile2;
//   final String alpha;
//
//   // Img imm = Img(image: DecorationImage(image: FileImage(imageFile1!)));
//
//   // Image img = Image(image: FileImage(imageFile2!));
//
//   const Kuvait(
//       {Key? key,
//       required this.imageFile1,
//       required this.imageFile2,
//       required this.alpha})
//       : super(key: key);
//
//   // Image img = Image(image: FileImage(File(pth));
//
  @override
  Widget build(BuildContext context) {
    // List<Img> lst = [Img(image: FileImage(imageFile1).toString()),]

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('hello 2 '),
          // child: ImageCollage(
          //   // images: [imageFile1, imageFile2],
          //   images: [Img(image: FileImage(imageFile2!)],
          // ),
        ),
      ),
    );
  }
}
//
// // class Kuvait extends StatelessWidget {
// //
// //   File? imageFile1;
// //   File? imageFile2;
// //   String alpha;
// //   // const Kuvait({Key? key}) : super(key: key);
// //
// //   Kuvait({
// //     required this.imageFile1,
// //     required this.imageFile2,
// //     required this.alpha
// // })
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         body: Text('hello 2 $alpha'),
// //       ),
// //     );
// //   }
// // }
//
// // class Kuvait extends StatefulWidget {
// //   // const Kuvait({Key? key}) : super(key: key);
// //
// //   File? imageFile1;
// //   File? imageFile2;
// //   String alpha;
// //   // const Kuvait({Key? key}) : super(key: key);
// //
// //   Kuvait({
// //     required this.imageFile1,
// //     required this.imageFile2,
// //     required this.alpha
// //   })
// //
// //   @override
// //   State<Kuvait> createState() {
// //     return _KuvaitState();
// //   }
// // }
// //
// // class _KuvaitState extends State<Kuvait> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         body: Text('hello 2 $alpha'),
// //       ),
// //     );
// //   }
// // }
