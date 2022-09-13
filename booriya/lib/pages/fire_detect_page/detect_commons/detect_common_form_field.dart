import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../Colors.dart';
import '../../../common/info_form_field.dart';

class DetectCommonFormField extends StatelessWidget {
  // final humanImage;
  final detectTimeText;
  final detectCountText;
  final imageUrl;

  const DetectCommonFormField(
      {required this.imageUrl,
      required this.detectTimeText,
      required this.detectCountText});

  // const DetectCommonFormField({required this.humanImage, required this.detectInfoText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: imageUrl,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: backgroundColor(),
          ),
          child: Column(
            children: [
              InfoFormField(
                titleText: detectTimeText[0],
                infoText: detectTimeText[1],
              ),
              InfoFormField(
                titleText: detectCountText[0],
                infoText: detectCountText[1],
              ),
            ],
          ),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
