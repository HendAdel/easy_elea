import 'package:easy_elea/utils/color.utility.dart';
import 'package:easy_elea/utils/images.utility.dart';
import 'package:easy_elea/widgets/on_board_pageview_container.dart';
import 'package:flutter/material.dart';
import 'package:easy_elea/widgets/on_board_indicator.dart';
import 'package:easy_elea/widgets/on_board_navigator_buttons.dart';

class OnBoardPage extends StatefulWidget {
  static const String id = 'OnBoarding';

  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  PageController _pageViewController = PageController();
  int currentPageIndex = 0;

  void _updateCurrentPageIndex(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
  }

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (currentPageIndex != 3)
                    TextButton(
                      onPressed: () {
                        skip(3);
                        currentPageIndex = 3;
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              flex: 3,
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageViewController,
                onPageChanged: _updateCurrentPageIndex,
                children: const <Widget>[
                  OnBoardPageviewContainer(
                      image: ImagesUtility.certfic,
                      title: 'Certification and Badges',
                      description:
                          'Earn a certificate after completion of every course'),
                  OnBoardPageviewContainer(
                      image: ImagesUtility.courseProgress,
                      title: 'Progress Tracking',
                      description: 'Check your Progress of every course'),
                  OnBoardPageviewContainer(
                      image: ImagesUtility.offilneAccess,
                      title: 'Offline Access',
                      description: 'Make your course available offline'),
                  OnBoardPageviewContainer(
                      image: ImagesUtility.catalog,
                      title: 'Course Catalog',
                      description: 'View in which courses you are enrolled'),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      PageIndicator(
                        positionIndex: 0,
                        currentPageIndex: currentPageIndex,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      PageIndicator(
                        positionIndex: 1,
                        currentPageIndex: currentPageIndex,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      PageIndicator(
                        positionIndex: 2,
                        currentPageIndex: currentPageIndex,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      PageIndicator(
                        positionIndex: 3,
                        currentPageIndex: currentPageIndex,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OnBoardNavigatorButtons(
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 30,
                            ),
                            backgroundColor: WidgetStateProperty.all<Color>(
                                ColorUtility.lightGray),
                            onPressed: () {
                              previousPage();
                            }),
                        OnBoardNavigatorButtons(
                            icon: const Icon(
                              Icons.arrow_forward,
                              size: 30,
                            ),
                            backgroundColor: WidgetStateProperty.all<Color>(
                                ColorUtility.deepYellow),
                            onPressed: () {
                              nextPage();
                            })
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void skip(int index) {
    _pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void previousPage() {
    if (currentPageIndex == 3 || currentPageIndex > 0) {
      _pageViewController.previousPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
      currentPageIndex = currentPageIndex - 1;
    }
  }

  void nextPage() {
    if (currentPageIndex == 0 || currentPageIndex < 3) {
      _pageViewController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
      currentPageIndex = currentPageIndex + 1;
    }
  }
}
