import 'package:easy_elea/models/course.dart';
import 'package:flutter/material.dart';
import 'package:easy_elea/widgets/chip_widget.dart';
import 'package:video_box/video_box.dart';

class CourseDetails extends StatefulWidget {
  static const String id = 'course_details';
  final Course course;
  const CourseDetails({required this.course, super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails>
     {
      double? height;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Stack(children: [
        // Container(
        //   height: 250,
        //   child: VideoBox(
        //     controller: ViewController(source:
        //     VideoPlayerController.networkUrl(Uri.parse('https://www.pexels.com/video/book-titled-flames-of-life-2308576/'),),
        //     ),
        //   ),
        // ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: height != null
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))
                    : null),
            alignment: Alignment.bottomCenter,
            height: height,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Course Name',
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Instructor Name',
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 17),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    LectureChipsWidget(onChanged: (CourseOptions) {
                      setState(() {
                        height = MediaQuery.sizeOf(context).height - 220;
                      });
                    })
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
