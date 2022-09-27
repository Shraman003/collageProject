import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:project5/page5.dart';

class pickFirst extends StatefulWidget {
  const pickFirst({Key? key}) : super(key: key);

  @override
  State<pickFirst> createState() => _pickFirstState();
}

class _pickFirstState extends State<pickFirst> {
  File? imageFile1;

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
                        builder: (context) => newSec(imageFile1: imageFile1)),
                  );
                },
                child: Text(
                  "Continue to Select Image 2",
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
}
