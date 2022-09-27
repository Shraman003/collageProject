import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:io';

import 'package:merge_images/merge_images.dart';

import 'image_preview_page.dart';
import 'main.dart';

const networkImagePath =
    "https://pic.dbw.cn/003/013/364/00301336495_44db9bad.jpg";

///
///@author xiaozhizhong
///@date 2020/4/2
///@description images merge helper example page
///
class ImagesMergeHelperPage extends StatefulWidget {
  final File? imageFile1;
  final File? imageFile2;

  ImagesMergeHelperPage({this.imageFile1, this.imageFile2});

  // ImagesMergeHelperMer({this.nimageFile1,});

  @override
  _ImagesMergeHelperPageState createState() => _ImagesMergeHelperPageState();
}

class _ImagesMergeHelperPageState extends State<ImagesMergeHelperPage> {
  ui.Image? assetImage1;
  ui.Image? assetImage2;
  ui.Image? providerImage;

  @override
  void initState() {
    super.initState();
    loadImage();
  }

  loadImage() async {
    // ui.Image image =
    //     await ImagesMergeHelper.loadImageFromFile(widget.imageFile1);
    assetImage1 = await ImagesMergeHelper.loadImageFromFile(widget.imageFile1);
    // assetImage1 =
    //     await ImagesMergeHelper.loadImageFromAsset("assets/sunset.jpeg");
    assetImage2 = await ImagesMergeHelper.loadImageFromFile(widget.imageFile2);
    // providerImage = await ImagesMergeHelper.loadImageFromProvider(
    //     NetworkImage(networkImagePath));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Helper Page"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                "assets/sunset.jpeg",
                scale: 10,
                fit: BoxFit.scaleDown,
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/bridge.jpg",
                scale: 10,
                fit: BoxFit.scaleDown,
              ),
              SizedBox(
                height: 10,
              ),
              Image.network(
                networkImagePath,
                scale: 10,
                fit: BoxFit.scaleDown,
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () => _merge(fit: true, direction: Axis.vertical),
                  child: Text(
                    "vertical & fit",
                    style: Theme.of(context).textTheme.headline6,
                  )),
              ElevatedButton(
                  onPressed: () => _merge(fit: false, direction: Axis.vertical),
                  child: Text(
                    "vertical",
                    style: Theme.of(context).textTheme.headline6,
                  )),
              ElevatedButton(
                  onPressed: () =>
                      _merge(fit: true, direction: Axis.horizontal),
                  child: Text(
                    "horizontal & fit",
                    style: Theme.of(context).textTheme.headline6,
                  )),
              ElevatedButton(
                  onPressed: () =>
                      _merge(fit: false, direction: Axis.horizontal),
                  child: Text(
                    "horizontal",
                    style: Theme.of(context).textTheme.headline6,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  ///merge images using ImagesMergeHelper and preview
  _merge({required bool fit, required Axis direction}) async {
    ui.Image image = await ImagesMergeHelper.margeImages(
        [assetImage1!, assetImage2!],
        fit: fit, direction: direction, backgroundColor: Colors.black26);
    Uint8List? bytes = await ImagesMergeHelper.imageToUint8List(image);
    if (bytes == null) return;
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Preview(bytes)));
  }
}
