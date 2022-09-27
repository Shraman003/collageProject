import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project5/page3.dart';
import 'nextpage.dart';
import 'page2.dart';
import 'page4.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  File? imageFile1;
  File? imageFile2;

  late Image i1;
  late Image i2;

  // late String pth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Capturing Images'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                if (imageFile1 != null)
                  Container(
                    width: 185,
                    height: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          image: FileImage(imageFile1!), fit: BoxFit.cover),
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
                      onPressed: () => getImage1(source: ImageSource.gallery),
                      child: const Text('Select Image 1',
                          style: TextStyle(fontSize: 18))),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () => getImage2(source: ImageSource.gallery),
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
                  Navigator.push(
                    context,
                    // MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    MaterialPageRoute(builder: (context) => pickFirst()),
                  );
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

  void getImage1({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(
        source: source,
        maxWidth: 640,
        maxHeight: 480,
        imageQuality: 70 //0 - 100
        );

    if (file?.path != null) {
      setState(() {
        imageFile1 = File(file!.path);
      });
    }
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
        // i1 = file;
        // pth = file!.path;
        imageFile2 = File(file!.path);
      });
    }
  }
}
