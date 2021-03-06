import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twnel_face_app/app/global_widgets/loader.dart';
import 'package:twnel_face_app/app/theme/my_colors.dart';
import 'package:twnel_face_app/app/theme/my_images.dart';
import 'package:twnel_face_app/app/theme/my_styles.dart';

import '../face_detector_controller.dart';

class CameraBox extends StatelessWidget {

  const CameraBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FaceDetectorController>(
      builder: (_) {
        return Container(
            color: Colors.black,
            child: Stack(
              fit: StackFit.expand,
              children: [

                  RepaintBoundary(
                    key: _.globalKey,
                      child: Image.asset(MyImages.frontalFace, fit: BoxFit.contain,)),
                  Container(color: Colors.black,width: Get.width,
                    height: Get.height,),
                  _.camera == null ? const Loader() : Center(
                    child: SizedBox(
                      width: Get.width,
                      height: Get.height,
                      child: CameraPreview(_.controller!),
                    ),
                  ),
                  if (_.customPaint != null) _.customPaint!,
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: MyStyles.edgeInsetsAll8,
                      child: ElevatedButton(
                        child: const Icon(Icons.camera_alt, color: MyColors.primary, size: 36.0,),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry?> (
                                const EdgeInsets.all(10.0)
                            ),
                            backgroundColor: MaterialStateProperty.all<Color?>(
                                Colors.white
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              const RoundedRectangleBorder(borderRadius: MyStyles.borderRadiusAll20),
                            )
                        ),
                        onPressed: _.onPressedTakePicture,
                      ),
                    ),
                  ),
              ],
            ),
            );
      }
    );
  }

}
