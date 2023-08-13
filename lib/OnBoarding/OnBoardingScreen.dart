import 'package:efe/secondP.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  controller: _pageController,
                  itemCount: onBoardData.length,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => onBoaredContent(
                        image: onBoardData[index].image,
                        title: onBoardData[index].title,
                        description: onBoardData[index].description,
                      )),
            ),
            Container(
              padding: EdgeInsets.only(left: 165),  
              child: Row(
                children: [
                  ...List.generate(
                    onBoardData.length,
                    ((index) => Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: DoIndicator(isActive: index == _pageIndex),
                        )),
                  ),
                  const Spacer(),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            Container(
              width: 70,
              height: 70,
              margin: EdgeInsets.only(left: 250),
              child: ElevatedButton(
                  onPressed: () {
                    if (_pageIndex < 2) {
                      _pageController.nextPage(
                          duration: Duration(microseconds: 300),
                          curve: Curves.ease);
                    } else {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) {
                          return secondP();
                        },
                      ));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), backgroundColor: Colors.black),
                  child: Icon(Icons.arrow_forward)),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      )),
    );
  }
}

class DoIndicator extends StatelessWidget {
  const DoIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: isActive ? 12 : 4,
      width: 4,
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}

class onboard {
  final String image, title, description;
  onboard(
      {required this.image, required this.title, required this.description});
}

final List onBoardData = [
  onboard(
    image: "assets/images/MyLogo.png",
    title: "Maisam",
    description: "Maisam",
  ),
  onboard(
    image: "assets/images/MyLogo.png",
    title: "Maisam mohammad ",
    description: "Maisam",
  ),
  onboard(
    image: "assets/images/MyLogo.png",
    title: "Maisam mohammad salem",
    description: "Maisam",
  ),
];

class onBoaredContent extends StatelessWidget {
  const onBoaredContent(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(image),
        Spacer(),
        Text(title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.w500)),
        SizedBox(height: 16),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        Spacer()
      ],
    );
  }
}
