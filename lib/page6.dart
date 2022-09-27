import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class madeCollage extends StatelessWidget {
  final File? nimageFile1;
  final File? nimageFile2;

  madeCollage({this.nimageFile1, this.nimageFile2});

  // const ({
  // Key? key,
  // required this.imageFile1,
  // required this.imageFile2,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collage Completed'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                if (nimageFile1 != null)
                  Container(
                    width: 185,
                    height: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          image: FileImage(nimageFile1!), fit: BoxFit.cover),
                      border: Border.all(width: 8, color: Colors.black),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  )
                else
                  Container(
                    width: 185,
                    height: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(width: 8, color: Colors.black12),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Text(
                      'Image should appear here',
                      style: TextStyle(fontSize: 26),
                    ),
                  ),
                const SizedBox(
                  width: 10,
                ),
                if (nimageFile2 != null)
                  Container(
                    width: 185,
                    height: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          image: FileImage(nimageFile2!), fit: BoxFit.cover),
                      border: Border.all(width: 8, color: Colors.black),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  )
                else
                  Container(
                    width: 185,
                    height: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(width: 8, color: Colors.black12),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Text(
                      'Image should appear here',
                      style: TextStyle(fontSize: 26),
                    ),
                  ),
              ],
            ),
            // if (imageFile != null)
            //   Container(
            //     width: 230,
            //     height: 200,
            //     alignment: Alignment.center,
            //     decoration: BoxDecoration(
            //       color: Colors.grey,
            //       image: DecorationImage(
            //           image: FileImage(imageFile!), fit: BoxFit.cover),
            //       border: Border.all(width: 8, color: Colors.black),
            //       borderRadius: BorderRadius.circular(12.0),
            //     ),
            //   )
            // else
            //   Container(
            //     width: 230,
            //     height: 200,
            //     alignment: Alignment.center,
            //     decoration: BoxDecoration(
            //       color: Colors.grey,
            //       border: Border.all(width: 8, color: Colors.black12),
            //       borderRadius: BorderRadius.circular(12.0),
            //     ),
            //     child: const Text(
            //       'Image should appear here',
            //       style: TextStyle(fontSize: 26),
            //     ),
            //   ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      // => getImage1(source: ImageSource.gallery),
                      child: const Text('Select Image 1',
                          style: TextStyle(fontSize: 18))),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      // => getImage2(source: ImageSource.gallery),
                      child: const Text('Select Image 2',
                          style: TextStyle(fontSize: 18))),
                ),
              ],
            ),
            ButtonTheme(
              minWidth: 100.0,
              height: 70.0,
              child: TextButton(
                // onPressed: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => Kuvait(
                //               imageFile1: imageFile1,
                //               imageFile2: imageFile2,
                //               alpha: "Banka",
                //             )),
                //   );
                // },
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //
                  //   MaterialPageRoute(builder: (context) => pickFirst()),
                  // );
                },
                child: Text("Create Collage"),
              ),
            ),
            // Expanded(
            //   child: ElevatedButton(
            //       onPressed: () => getImage2(source: ImageSource.gallery),
            //       child: const Text('Select Image 3',
            //           style: TextStyle(fontSize: 18))),
            // ),
            // ElevatedButton(onPressed: onPressed, child: child)
          ],
        ),
      ),
    );
  }
}

// late File? imageFiles1;
// late File? imageFiles2;

// class Collage extends StatelessWidget {
//   final File? imageFile1;
//   final File? imageFile2;
//
//   File? getFile1()
//   {
//     return imageFile1;
//   }
//
//   File? getFile2()
//   {
//     return imageFile2;
//   }
//
//   const Collage({
//     Key? key,
//     required this.imageFile1,
//     required this.imageFile2,
//   }) : super(key: key);
//
//
//
//   @override
//   State<Collage> createState() => _CollageState();
// }
//
// class _CollageState extends State<Collage> {
//
//   File? imageFile3 =  ;
//   File? imageFile2;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Collage Completed'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               children: [
//                 if (imageFile1 != null)
//                   Container(
//                     width: 185,
//                     height: 200,
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       color: Colors.grey,
//                       image: DecorationImage(
//                           image: FileImage(imageFile1!), fit: BoxFit.cover),
//                       border: Border.all(width: 8, color: Colors.black),
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                   )
//                 else
//                   Container(
//                     width: 185,
//                     height: 200,
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       color: Colors.grey,
//                       border: Border.all(width: 8, color: Colors.black12),
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     child: const Text(
//                       'Image should appear here',
//                       style: TextStyle(fontSize: 26),
//                     ),
//                   ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 if (imageFile2 != null)
//                   Container(
//                     width: 185,
//                     height: 200,
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       color: Colors.grey,
//                       image: DecorationImage(
//                           image: FileImage(imageFile2!), fit: BoxFit.cover),
//                       border: Border.all(width: 8, color: Colors.black),
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                   )
//                 else
//                   Container(
//                     width: 185,
//                     height: 200,
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       color: Colors.grey,
//                       border: Border.all(width: 8, color: Colors.black12),
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     child: const Text(
//                       'Image should appear here',
//                       style: TextStyle(fontSize: 26),
//                     ),
//                   ),
//               ],
//             ),
//             // if (imageFile != null)
//             //   Container(
//             //     width: 230,
//             //     height: 200,
//             //     alignment: Alignment.center,
//             //     decoration: BoxDecoration(
//             //       color: Colors.grey,
//             //       image: DecorationImage(
//             //           image: FileImage(imageFile!), fit: BoxFit.cover),
//             //       border: Border.all(width: 8, color: Colors.black),
//             //       borderRadius: BorderRadius.circular(12.0),
//             //     ),
//             //   )
//             // else
//             //   Container(
//             //     width: 230,
//             //     height: 200,
//             //     alignment: Alignment.center,
//             //     decoration: BoxDecoration(
//             //       color: Colors.grey,
//             //       border: Border.all(width: 8, color: Colors.black12),
//             //       borderRadius: BorderRadius.circular(12.0),
//             //     ),
//             //     child: const Text(
//             //       'Image should appear here',
//             //       style: TextStyle(fontSize: 26),
//             //     ),
//             //   ),
//             const SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   child: ElevatedButton(
//                       onPressed: () => getImage1(source: ImageSource.gallery),
//                       child: const Text('Select Image 1',
//                           style: TextStyle(fontSize: 18))),
//                 ),
//                 const SizedBox(
//                   width: 20,
//                 ),
//                 Expanded(
//                   child: ElevatedButton(
//                       onPressed: () => getImage2(source: ImageSource.gallery),
//                       child: const Text('Select Image 2',
//                           style: TextStyle(fontSize: 18))),
//                 ),
//               ],
//             ),
//             ButtonTheme(
//               minWidth: 100.0,
//               height: 70.0,
//               child: RaisedButton(
//                 // onPressed: () {
//                 //   Navigator.push(
//                 //     context,
//                 //     MaterialPageRoute(
//                 //         builder: (context) => Kuvait(
//                 //               imageFile1: imageFile1,
//                 //               imageFile2: imageFile2,
//                 //               alpha: "Banka",
//                 //             )),
//                 //   );
//                 // },
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     // MaterialPageRoute(builder: (context) => WelcomeScreen()),
//                     MaterialPageRoute(builder: (context) => pickFirst()),
//                   );
//                 },
//                 child: Text("Create Collage"),
//               ),
//             ),
//             // Expanded(
//             //   child: ElevatedButton(
//             //       onPressed: () => getImage2(source: ImageSource.gallery),
//             //       child: const Text('Select Image 3',
//             //           style: TextStyle(fontSize: 18))),
//             // ),
//             // ElevatedButton(onPressed: onPressed, child: child)
//           ],
//         ),
//       ),
//     );
//   }
// }
