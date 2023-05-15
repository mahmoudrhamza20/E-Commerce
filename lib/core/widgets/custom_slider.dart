import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSlider extends StatelessWidget {
   const CustomSlider({Key? key,  this.height = 110}) : super(key: key);
final double height ;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: imageSliders,
        ),
      );
  }
}

final List<String> bannarList = [
     'assets/images/1.png',
     'assets/images/2.jpg',
     'assets/images/1.png',
     'assets/images/3.jpeg',
   ];
final List<Widget> imageSliders = bannarList
    .map((item) => Container(
      margin: const EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.asset(item, fit: BoxFit.cover, width: 700.0.w,height: 500.h,),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                         Color.fromARGB(197, 236, 224, 224),
                       Color.fromARGB(197, 241, 234, 234),

                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding:  EdgeInsets.symmetric(
                      vertical: 10.0.h, horizontal: 20.0.w),
                  child: Center(
                    child: Text(
                      'No. ${bannarList.indexOf(item)} image',
                      style:  TextStyle(
                        color: Colors.white,
                        fontSize: 20.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    ))
    .toList();

