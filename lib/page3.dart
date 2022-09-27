import 'package:flutter/material.dart';
import 'page2.dart';
import 'nextpage.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name = "";

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Color(0xFFffffff),
        body: Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Form(
            key: formKey, //key for form
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/jaconda-41.png',
                  fit: BoxFit.cover,
                  width: 280,
                ),

                SizedBox(height: height * 0.04),
                Text(
                  "Pleasure to Get You",
                  style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
                ),
                Text(
                  "Welcomed !",
                  style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                ButtonTheme(
                  minWidth: 100.0,
                  height: 70.0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Kuvait(
                                // imageFile1: imageFile1,
                                // imageFile2: imageFile2,
                                // alpha: "Banka",
                                )),
                      );
                    },
                    // onPressed: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    //   );
                    // },
                    child: Text("Create Collage"),
                  ),
                ),

                // TextFormField(
                //     // decoration: InputDecoration(
                //     //     labelText:
                //     //         "We are excited to know what would you like your collage to be named as"),
                //     )
              ],
            ),
          ),
        ));
  }
}
