import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/demo_provider.dart';
import 'package:untitled/widgets/mybtn.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DemoProvider>(
      builder: (context, demoProvider, child) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                    color: Colors.grey.shade500,
                  ),
                  child: Center(
                    child: demoProvider.savingImage == null
                        ? const Text("No image selected")
                        : CircleAvatar(
                            backgroundImage: FileImage(
                              demoProvider.savingImage!,
                            ),
                            radius: 200,
                          ),
                  ),
                ),

                /// gallery
                MyBtn(
                  btnTitle: "Pick image from gallery",
                  onTap: () {
                    demoProvider.pickImage(ImageSource.gallery);
                  },
                ),

                const SizedBox(
                  height: 30,
                ),

                /// Camera
                MyBtn(
                  btnTitle: "Pick image from camera",
                  onTap: () {
                    demoProvider.pickImage(ImageSource.camera);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
