import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/magic_router.dart';
import '../../../../../translations/locale_keys.g.dart';
import '../../../../auth/presentation/views/login_view.dart';
import 'widgets/on_boarding_item.dart';
import '../../models/on_boarding_model.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  List<OnBoardingModel> boarding = [
    OnBoardingModel(
        title: 'E-Commerce Application',
        desc:
            'E Commerce application template Buy this code template in codecanyon',
        image: 'assets/images/Asset 1.png'),
    OnBoardingModel(
        title: 'Choose Item',
        desc: 'Choose Items wherever you are ',
        image: 'assets/images/Asset 2.png'),
    OnBoardingModel(
        title: 'Buy Item',
        desc: 'Shop From thousand brands in the world in one application  ',
        image: 'assets/images/Asset 4.png'),
  ];

  PageController pageController = PageController();
  bool isLast = false;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: pageController,
              itemBuilder: (context, index) => OnBoardingItem(
                boarding: boarding[index],
              ),
              itemCount: boarding.length,
              onPageChanged: onPageChange,
            ),
          ),
          SizedBox(
            height: 80.h,
          ),
          Row(
            children: [
              SmoothPageIndicator(
                controller: pageController,
                count: boarding.length,
                axisDirection: Axis.horizontal,
                effect: const ExpandingDotsEffect(
                    expansionFactor: 2,
                    spacing: 8.0,
                    dotWidth: 7.0,
                    dotHeight: 7.0,
                    paintStyle: PaintingStyle.fill,
                    dotColor: Colors.grey,
                    activeDotColor: kPrimaryColor),
              ),
              SizedBox(
                width: 160.w,
              ),
              Expanded(
                child: FloatingActionButton.extended(
                  isExtended: true,
                  elevation: 0,
                  backgroundColor: kPrimaryColor,
                  onPressed: () {
                    if (isLast) {
                      skipOnBoarding(context);
                    } else {
                      pageController.nextPage(
                          duration: const Duration(milliseconds: 750),
                          curve: Curves.fastLinearToSlowEaseIn);
                    }
                  },
                  label: currentIndex < boarding.length - 1
                      ? Text(LocaleKeys.next.tr(),
                          style: TextStyle(fontSize: 18.sp))
                      : Text(LocaleKeys.getStarted.tr(),
                          style: const TextStyle(fontSize: 15)),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }

  void skipOnBoarding(BuildContext context) {
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginView(),));
    // CacheHelper.saveData(key: 'onBoarding', value: true).then((value) {
    MagicRouter.navigateAndPopAll(const LoginView());
    // });
  }

  void onPageChange(int index) {
    setState(() {
      currentIndex = index;
    });
    if (index == boarding.length - 1) {
      setState(() {
        isLast = true;
      });
    } else {
      setState(() {
        isLast = false;
      });
    }
  }
}
