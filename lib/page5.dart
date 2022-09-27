import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'page6.dart';
import 'page7.dart';
//
// // class pickSecond extends StatelessWidget {
// //   final File? imageFile1;
// //
// //   pickSecond({this.imageFile1});
// //
// //   // const pickSecond({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     File? imageFile2;
// //
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Image Collage'),
// //         centerTitle: true,
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(12.0),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             if (imageFile2 != null)
// //               Container(
// //                 width: 185,
// //                 height: 200,
// //                 alignment: Alignment.center,
// //                 decoration: BoxDecoration(
// //                   color: Colors.grey,
// //                   image: DecorationImage(
// //                       image: FileImage(imageFile2), fit: BoxFit.cover),
// //                   border: Border.all(width: 8, color: Colors.black),
// //                   borderRadius: BorderRadius.circular(12.0),
// //                 ),
// //               )
// //             else
// //               Container(
// //                 width: 185,
// //                 height: 200,
// //                 alignment: Alignment.center,
// //                 decoration: BoxDecoration(
// //                   color: Colors.grey,
// //                   border: Border.all(width: 8, color: Colors.black12),
// //                   borderRadius: BorderRadius.circular(12.0),
// //                 ),
// //                 child: const Text(
// //                   'Image should appear here',
// //                   style: TextStyle(fontSize: 26),
// //                 ),
// //               ),
// //             const SizedBox(
// //               width: 10,
// //             ),
// //
// //             const SizedBox(
// //               height: 20,
// //             ),
// //             Row(
// //               children: [
// //                 Expanded(
// //                   child: ElevatedButton(
// //                       onPressed: () => getImage2(source: ImageSource.gallery),
// //                       child: const Text('Select Image 2',
// //                           style: TextStyle(fontSize: 18))),
// //                 ),
// //                 const SizedBox(
// //                   height: 20,
// //                 ),
// //                 // Expanded(
// //                 //   child: ElevatedButton(
// //                 //       onPressed: () {
// //                 //         Navigator.push(
// //                 //           context,
// //                 //           // MaterialPageRoute(builder: (context) => WelcomeScreen()),
// //                 //           MaterialPageRoute(
// //                 //               builder: (context) =>
// //                 //                   pickSecond(imageFile1: imageFile1)),
// //                 //         );
// //                 //       },
// //                 //       child: const Text('Continue to Select Image 2',
// //                 //           style: TextStyle(fontSize: 18))),
// //                 // ),
// //                 // Expanded(
// //                 //   child: ElevatedButton(
// //                 //       onPressed: () => getImage2(source: ImageSource.gallery),
// //                 //       child: const Text('Select Image 2',
// //                 //           style: TextStyle(fontSize: 18))),
// //                 // ),
// //               ],
// //             ),
// //             // Expanded(
// //             //   child: ElevatedButton(
// //             //       onPressed: () {
// //             //         Navigator.push(
// //             //           context,
// //             //           // MaterialPageRoute(builder: (context) => WelcomeScreen()),
// //             //           MaterialPageRoute(
// //             //               builder: (context) =>
// //             //                   pickSecond(imageFile1: imageFile1)),
// //             //         );
// //             //       },
// //             //       child: const Text('Continue to Select Image 2',
// //             //           style: TextStyle(fontSize: 18))),
// //             // ),
// //             ButtonTheme(
// //               minWidth: double.infinity,
// //               height: 50.0,
// //               child: RaisedButton(
// //                 // onPressed: () {
// //                 //   Navigator.push(
// //                 //     context,
// //                 //     MaterialPageRoute(
// //                 //         builder: (context) => Kuvait(
// //                 //               imageFile1: imageFile1,
// //                 //               imageFile2: imageFile2,
// //                 //               alpha: "Banka",
// //                 //             )),
// //                 //   );
// //                 // },
// //                 onPressed: () {
// //                   Navigator.push(
// //                     context,
// //                     // MaterialPageRoute(builder: (context) => WelcomeScreen()),
// //                     MaterialPageRoute(
// //                         builder: (context) => madeCollage(
// //                             nimageFile1: imageFile1, nimageFile2: imageFile2)),
// //                   );
// //                 },
// //                 child: Text(
// //                   "Create collage",
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 18,
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             // Expanded(
// //             //   child: ElevatedButton(
// //             //       onPressed: () => getImage2(source: ImageSource.gallery),
// //             //       child: const Text('Select Image 3',
// //             //           style: TextStyle(fontSize: 18))),
// //             // ),
// //             // ElevatedButton(onPressed: onPressed, child: child)
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// //
// //   void getImage2({required ImageSource source}) async {
// //     final file = await ImagePicker().pickImage(
// //         source: source,
// //         maxWidth: 640,
// //         maxHeight: 480,
// //         imageQuality: 70 //0 - 100
// //         );
// //
// //     if (file?.path != null) {
// //       setState(() {
// //         imageFile2 = File(file!.path);
// //       });
// //     }
// //   }
// // }
// //
// // class pickSec extends StatelessWidget {
// //   final File? imageFile1;
// //   const pickSec({Key? key, this.imageFile1}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Image Collage'),
// //         centerTitle: true,
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(12.0),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             if (imageFile2 != null)
// //               Container(
// //                 width: 185,
// //                 height: 200,
// //                 alignment: Alignment.center,
// //                 decoration: BoxDecoration(
// //                   color: Colors.grey,
// //                   image: DecorationImage(
// //                       image: FileImage(imageFile2!), fit: BoxFit.cover),
// //                   border: Border.all(width: 8, color: Colors.black),
// //                   borderRadius: BorderRadius.circular(12.0),
// //                 ),
// //               )
// //             else
// //               Container(
// //                 width: 185,
// //                 height: 200,
// //                 alignment: Alignment.center,
// //                 decoration: BoxDecoration(
// //                   color: Colors.grey,
// //                   border: Border.all(width: 8, color: Colors.black12),
// //                   borderRadius: BorderRadius.circular(12.0),
// //                 ),
// //                 child: const Text(
// //                   'Image should appear here',
// //                   style: TextStyle(fontSize: 26),
// //                 ),
// //               ),
// //             const SizedBox(
// //               width: 10,
// //             ),
// //
// //             const SizedBox(
// //               height: 20,
// //             ),
// //             Row(
// //               children: [
// //                 Expanded(
// //                   child: ElevatedButton(
// //                       onPressed: () => getImage2(source: ImageSource.gallery),
// //                       child: const Text('Select Image 2',
// //                           style: TextStyle(fontSize: 18))),
// //                 ),
// //                 const SizedBox(
// //                   height: 20,
// //                 ),
// //                 // Expanded(
// //                 //   child: ElevatedButton(
// //                 //       onPressed: () {
// //                 //         Navigator.push(
// //                 //           context,
// //                 //           // MaterialPageRoute(builder: (context) => WelcomeScreen()),
// //                 //           MaterialPageRoute(
// //                 //               builder: (context) =>
// //                 //                   pickSecond(imageFile1: imageFile1)),
// //                 //         );
// //                 //       },
// //                 //       child: const Text('Continue to Select Image 2',
// //                 //           style: TextStyle(fontSize: 18))),
// //                 // ),
// //                 // Expanded(
// //                 //   child: ElevatedButton(
// //                 //       onPressed: () => getImage2(source: ImageSource.gallery),
// //                 //       child: const Text('Select Image 2',
// //                 //           style: TextStyle(fontSize: 18))),
// //                 // ),
// //               ],
// //             ),
// //             // Expanded(
// //             //   child: ElevatedButton(
// //             //       onPressed: () {
// //             //         Navigator.push(
// //             //           context,
// //             //           // MaterialPageRoute(builder: (context) => WelcomeScreen()),
// //             //           MaterialPageRoute(
// //             //               builder: (context) =>
// //             //                   pickSecond(imageFile1: imageFile1)),
// //             //         );
// //             //       },
// //             //       child: const Text('Continue to Select Image 2',
// //             //           style: TextStyle(fontSize: 18))),
// //             // ),
// //             ButtonTheme(
// //               minWidth: double.infinity,
// //               height: 50.0,
// //               child: RaisedButton(
// //                 // onPressed: () {
// //                 //   Navigator.push(
// //                 //     context,
// //                 //     MaterialPageRoute(
// //                 //         builder: (context) => Kuvait(
// //                 //               imageFile1: imageFile1,
// //                 //               imageFile2: imageFile2,
// //                 //               alpha: "Banka",
// //                 //             )),
// //                 //   );
// //                 // },
// //                 onPressed: () {
// //                   Navigator.push(
// //                     context,
// //                     // MaterialPageRoute(builder: (context) => WelcomeScreen()),
// //                     MaterialPageRoute(
// //                         builder: (context) => madeCollage(
// //                               nimageFile1: imageFile1,
// //                             )),
// //                   );
// //                 },
// //                 child: Text(
// //                   "Create collage",
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 18,
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             // Expanded(
// //             //   child: ElevatedButton(
// //             //       onPressed: () => getImage2(source: ImageSource.gallery),
// //             //       child: const Text('Select Image 3',
// //             //           style: TextStyle(fontSize: 18))),
// //             // ),
// //             // ElevatedButton(onPressed: onPressed, child: child)
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// //
// //   void getImage2({required ImageSource source}) async {
// //     final file = await ImagePicker().pickImage(
// //         source: source,
// //         maxWidth: 640,
// //         maxHeight: 480,
// //         imageQuality: 70 //0 - 100
// //         );
// //
// //     if (file?.path != null) {
// //       setState(() {
// //         imageFile2 = File(file!.path);
// //       });
// //     }
// //   }
// // }
// //
// //
// //
// // class pickSecond extends StatelessWidget {
// //   final File? imageFile1;
// //
// //   pickSecond(this.imageFile1);
// //
// //   // const pickSecond({
// //   //   Key? key,
// //   //   required this.imageFile1,
// //   // }) : super(key: key);
// //
// //   @override
// //   State<pickSecond> createState() => _pickSecondState();
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     // TODO: implement build
// //     throw UnimplementedError();
// //   }
// // }
// //
// // class _pickSecondState extends State<pickSecond> {
// //   File? imageFile2;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Image Collage'),
// //         centerTitle: true,
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(12.0),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             if (imageFile2 != null)
// //               Container(
// //                 width: 185,
// //                 height: 200,
// //                 alignment: Alignment.center,
// //                 decoration: BoxDecoration(
// //                   color: Colors.grey,
// //                   image: DecorationImage(
// //                       image: FileImage(imageFile2!), fit: BoxFit.cover),
// //                   border: Border.all(width: 8, color: Colors.black),
// //                   borderRadius: BorderRadius.circular(12.0),
// //                 ),
// //               )
// //             else
// //               Container(
// //                 width: 185,
// //                 height: 200,
// //                 alignment: Alignment.center,
// //                 decoration: BoxDecoration(
// //                   color: Colors.grey,
// //                   border: Border.all(width: 8, color: Colors.black12),
// //                   borderRadius: BorderRadius.circular(12.0),
// //                 ),
// //                 child: const Text(
// //                   'Image should appear here',
// //                   style: TextStyle(fontSize: 26),
// //                 ),
// //               ),
// //             const SizedBox(
// //               width: 10,
// //             ),
// //
// //             const SizedBox(
// //               height: 20,
// //             ),
// //             Row(
// //               children: [
// //                 Expanded(
// //                   child: ElevatedButton(
// //                       onPressed: () => getImage2(source: ImageSource.gallery),
// //                       child: const Text('Select Image 2',
// //                           style: TextStyle(fontSize: 18))),
// //                 ),
// //                 const SizedBox(
// //                   height: 20,
// //                 ),
// //                 // Expanded(
// //                 //   child: ElevatedButton(
// //                 //       onPressed: () {
// //                 //         Navigator.push(
// //                 //           context,
// //                 //           // MaterialPageRoute(builder: (context) => WelcomeScreen()),
// //                 //           MaterialPageRoute(
// //                 //               builder: (context) =>
// //                 //                   pickSecond(imageFile1: imageFile1)),
// //                 //         );
// //                 //       },
// //                 //       child: const Text('Continue to Select Image 2',
// //                 //           style: TextStyle(fontSize: 18))),
// //                 // ),
// //                 // Expanded(
// //                 //   child: ElevatedButton(
// //                 //       onPressed: () => getImage2(source: ImageSource.gallery),
// //                 //       child: const Text('Select Image 2',
// //                 //           style: TextStyle(fontSize: 18))),
// //                 // ),
// //               ],
// //             ),
// //             // Expanded(
// //             //   child: ElevatedButton(
// //             //       onPressed: () {
// //             //         Navigator.push(
// //             //           context,
// //             //           // MaterialPageRoute(builder: (context) => WelcomeScreen()),
// //             //           MaterialPageRoute(
// //             //               builder: (context) =>
// //             //                   pickSecond(imageFile1: imageFile1)),
// //             //         );
// //             //       },
// //             //       child: const Text('Continue to Select Image 2',
// //             //           style: TextStyle(fontSize: 18))),
// //             // ),
// //             ButtonTheme(
// //               minWidth: double.infinity,
// //               height: 50.0,
// //               child: RaisedButton(
// //                 // onPressed: () {
// //                 //   Navigator.push(
// //                 //     context,
// //                 //     MaterialPageRoute(
// //                 //         builder: (context) => Kuvait(
// //                 //               imageFile1: imageFile1,
// //                 //               imageFile2: imageFile2,
// //                 //               alpha: "Banka",
// //                 //             )),
// //                 //   );
// //                 // },
// //                 onPressed: () {
// //                   Navigator.push(
// //                     context,
// //                     // MaterialPageRoute(builder: (context) => WelcomeScreen()),
// //                     MaterialPageRoute(
// //                         builder: (context) => madeCollage(
// //                               nimageFile1: imageFile1,
// //                             )),
// //                   );
// //                 },
// //                 child: Text(
// //                   "Create collage",
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 18,
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             // Expanded(
// //             //   child: ElevatedButton(
// //             //       onPressed: () => getImage2(source: ImageSource.gallery),
// //             //       child: const Text('Select Image 3',
// //             //           style: TextStyle(fontSize: 18))),
// //             // ),
// //             // ElevatedButton(onPressed: onPressed, child: child)
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// //
// //   void getImage2({required ImageSource source}) async {
// //     final file = await ImagePicker().pickImage(
// //         source: source,
// //         maxWidth: 640,
// //         maxHeight: 480,
// //         imageQuality: 70 //0 - 100
// //         );
// //
// //     if (file?.path != null) {
// //       setState(() {
// //         imageFile2 = File(file!.path);
// //       });
// //     }
// //   }
// // }
//
// import 'package:flutter/cupertino.dart';

class newSec extends StatefulWidget {
  final File? imageFile1;

  newSec({this.imageFile1});

  @override
  State<newSec> createState() => _newSecState();
}

// File? imageFile2;

class _newSecState extends State<newSec> {
  File? imageFile2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Collage'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imageFile2 != null)
              Container(
                width: 185,
                height: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      image: FileImage(imageFile2!), fit: BoxFit.cover),
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

            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () => getImage2(source: ImageSource.gallery),
                      child: const Text('Select Image 2',
                          style: TextStyle(fontSize: 18))),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Expanded(
                //   child: ElevatedButton(
                //       onPressed: () {
                //         Navigator.push(
                //           context,
                //           // MaterialPageRoute(builder: (context) => WelcomeScreen()),
                //           MaterialPageRoute(
                //               builder: (context) =>
                //                   pickSecond(imageFile1: imageFile1)),
                //         );
                //       },
                //       child: const Text('Continue to Select Image 2',
                //           style: TextStyle(fontSize: 18))),
                // ),
                // Expanded(
                //   child: ElevatedButton(
                //       onPressed: () => getImage2(source: ImageSource.gallery),
                //       child: const Text('Select Image 2',
                //           style: TextStyle(fontSize: 18))),
                // ),
              ],
            ),
            // Expanded(
            //   child: ElevatedButton(
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           // MaterialPageRoute(builder: (context) => WelcomeScreen()),
            //           MaterialPageRoute(
            //               builder: (context) =>
            //                   pickSecond(imageFile1: imageFile1)),
            //         );
            //       },
            //       child: const Text('Continue to Select Image 2',
            //           style: TextStyle(fontSize: 18))),
            // ),
            ButtonTheme(
              minWidth: double.infinity,
              height: 50.0,
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
                  Navigator.push(
                    context,
                    // MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    MaterialPageRoute(
                        // builder: (context) => madeCollage(
                        //       nimageFile1: widget.imageFile1,
                        //       nimageFile2: imageFile2,
                        //     )),
                        builder: (context) => ImagesMergeHelperPage(
                              imageFile1: widget.imageFile1,
                              imageFile2: imageFile2,
                            )),
                  );
                },
                child: Text(
                  "Create collage",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
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

  void getImage2({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(
        source: source,
        maxWidth: 640,
        maxHeight: 480,
        imageQuality: 70 //0 - 100
        );

    if (file?.path != null) {
      setState(() {
        imageFile2 = File(file!.path);
      });
    }
  }
}
