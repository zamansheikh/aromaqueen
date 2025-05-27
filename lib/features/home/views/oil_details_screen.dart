import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:flutter/material.dart';

class OilDetailsScreen extends StatefulWidget {
  final String? oilName; // Optional parameter for oil name
  const OilDetailsScreen({super.key, this.oilName});

  @override
  State<OilDetailsScreen> createState() => _OilDetailsScreenState();
}

class _OilDetailsScreenState extends State<OilDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppbar1(
        title: widget.oilName ?? 'Oil Details', // Use the oil name if provided
      ),
      body: Center(
        child: Text(
          'Oil Details Screen',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}