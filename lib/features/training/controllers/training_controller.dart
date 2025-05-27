// training_controller.dart
import 'package:get/get.dart';

import '../widget/course.dart';


class TrainingController extends GetxController {
  final courses = <Course>[
    Course(
      title: 'Essential Oil Basics',
      imageUrl: 'https://resources.reed.co.uk/courses/coursemedia/224100/8b6c437f-8ccb-4f34-ae41-d96866aa6c2a_cover.webp',
      description: 'Learn how to use essential oils safely and effectively.',
      courseUrl: 'https://www.udemy.com/course/diploma-in-luxury-facial-facial-machines-chemical-peeling/',
    ),
    Course(
      title: 'Aromatherapy for Beginners',
      imageUrl: 'https://resources.reed.co.uk/courses/coursemedia/224100/8b6c437f-8ccb-4f34-ae41-d96866aa6c2a_cover.webp',
      description: 'Introduction to aromatherapy and its daily applications.',
      courseUrl: 'https://www.udemy.com/course/diploma-in-luxury-facial-facial-machines-chemical-peeling/',
    ),
     Course(
      title: 'Aromatherapy for Beginners',
      imageUrl: 'https://resources.reed.co.uk/courses/coursemedia/224100/8b6c437f-8ccb-4f34-ae41-d96866aa6c2a_cover.webp',
      description: 'Introduction to aromatherapy and its daily applications.',
      courseUrl: 'https://www.udemy.com/course/diploma-in-luxury-facial-facial-machines-chemical-peeling/',
    ),
     Course(
      title: 'Aromatherapy for Beginners',
      imageUrl: 'https://resources.reed.co.uk/courses/coursemedia/224100/8b6c437f-8ccb-4f34-ae41-d96866aa6c2a_cover.webp',
      description: 'Introduction to aromatherapy and its daily applications.',
      courseUrl: 'https://www.udemy.com/course/diploma-in-luxury-facial-facial-machines-chemical-peeling/',
    ),
    // Add more courses as needed
  ].obs;
}
