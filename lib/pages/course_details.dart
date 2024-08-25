import 'package:easy_elea/models/course.dart';
import 'package:flutter/material.dart';

class CourseDetails extends StatefulWidget {
  static const String id = 'course_details';
  final Course course;
  const CourseDetails({required this.course, super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Text("Welcome to firsebase!"),
    );
  }
}
