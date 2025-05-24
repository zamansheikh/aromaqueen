// training_controller.dart
import 'package:get/get.dart';

import '../widget/course.dart';


class TrainingController extends GetxController {
  final courses = <Course>[
    Course(
      title: 'Essential Oil Basics',
      imageUrl: 'https://i.ytimg.com/vi/3bALisct3vM/sddefault.jpg',
      description: 'Learn how to use essential oils safely and effectively.',
      courseUrl: 'https://www.udemy.com/course/diploma-in-luxury-facial-facial-machines-chemical-peeling/',
    ),
    Course(
      title: 'Aromatherapy for Beginners',
      imageUrl: 'https://i.ytimg.com/vi/3bALisct3vM/sddefault.jpg',
      description: 'Introduction to aromatherapy and its daily applications.',
      courseUrl: 'https://www.udemy.com/course/diploma-in-luxury-facial-facial-machines-chemical-peeling/',
    ),
     Course(
      title: 'Aromatherapy for Beginners',
      imageUrl: 'https://i.ytimg.com/vi/3bALisct3vM/sddefault.jpg',
      description: 'Introduction to aromatherapy and its daily applications.',
      courseUrl: 'https://www.udemy.com/course/diploma-in-luxury-facial-facial-machines-chemical-peeling/',
    ),
     Course(
      title: 'Aromatherapy for Beginners',
      imageUrl: 'https://i.ytimg.com/vi/3bALisct3vM/sddefault.jpg',
      description: 'Introduction to aromatherapy and its daily applications.',
      courseUrl: 'https://www.udemy.com/course/diploma-in-luxury-facial-facial-machines-chemical-peeling/',
    ),
    // Add more courses as needed
  ].obs;
}
