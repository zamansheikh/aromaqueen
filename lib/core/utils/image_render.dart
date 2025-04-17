import 'package:flutter/material.dart';

// This function renders an image based on the provided URL and dimensions.
Widget imageRender({
  required url,
  required double width,
  required double height,
}) {
  if (url == null || url.isEmpty) {
    return const SizedBox.shrink();
  }
  if (url.startsWith('http')) {
    return Image.network(url, width: width, height: height, fit: BoxFit.cover);
  } else {
    return Image.asset(url, width: width, height: height, fit: BoxFit.cover);
  }
}
