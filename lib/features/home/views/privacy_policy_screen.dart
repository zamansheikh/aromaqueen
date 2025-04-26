import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar1(title: "Privacy Policy"),
      body: PaddingWrapper(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section 1
              const Text(
                '1. Types of Data We Collect',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 16.0),
              
              // Section 2
              const Text(
                '2. Use of Your Personal Data',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Magna enim tempor non duis adipiscing elementum nibh vel praesent nascetur. Est id viverra amet suspenduit eu viverra orci. One semper auctor neque vitae tempus quam pellentesque nec nam tempus suspendissa facilisis interdum posuere lorem ipsum dolor commodo est et imperdiet. Vel sed eget consequat egestas nisl. Nisl amet dapibus commodo sit et imperdiet. Vel sed eget consequat egestas nisl. Nisl amet dapibus vitae pellentesque habitant sem fringilla interdum pellentesque habitant ornare venenatis et.',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 16.0),
              
              // Section 3
              const Text(
                '3. Disclosure of Your Personal Data',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Consequat et purus nibh venenatis cras sed ipsum vitae euismod tempus quam pellentesque nec. Non tellus molestie vitae non fusce lentosa. Quam suspendissa nec nam eiusmod nisi ut tortor consequat sit amet semper auctor neque vitae tempus quam.',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black87,
                ),
              ),
              const Text(
                '3. Disclosure of Your Personal Data',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Consequat et purus nibh venenatis cras sed ipsum vitae euismod tempus quam pellentesque nec. Non tellus molestie vitae non fusce lentosa. Quam suspendissa nec nam eiusmod nisi ut tortor consequat sit amet semper auctor neque vitae tempus quam.',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black87,
                ),
              ),
              const Text(
                '3. Disclosure of Your Personal Data',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Consequat et purus nibh venenatis cras sed ipsum vitae euismod tempus quam pellentesque nec. Non tellus molestie vitae non fusce lentosa. Quam suspendissa nec nam eiusmod nisi ut tortor consequat sit amet semper auctor neque vitae tempus quam.',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}