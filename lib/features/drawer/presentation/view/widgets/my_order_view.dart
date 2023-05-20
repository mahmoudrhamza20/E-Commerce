import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'my_order_view_body.dart';

class MyOrderView extends StatelessWidget {
  const MyOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: drawerListTileAppBar(
          title: 'My Order',
          widget: tabBar(),
        ),
        body:const MyOrderViewBody() ,
      ),
    );
  }
}

Widget tabBar(){
  return  TabBar(
    indicatorColor: kPrimaryColor,
    indicatorSize: TabBarIndicatorSize.label,
    labelColor: Colors.black,
    unselectedLabelColor: Colors.grey,
    labelPadding: EdgeInsets.symmetric(horizontal: 10.w),
    tabs: const[
       Tab(text: 'Delivered',),
       Tab(text: 'Processing',),
       Tab(text: 'Canceled',),
    ],
  );
}

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key, required this.title, required this.color, this.onPressed,
  });
final String title;
final Color color;
 final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height*.23,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                children:  [
                  Text('Order Id: 5t36-9iu2',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                const  Spacer(),
                  Text('wed, 12 Sep',style: TextStyle(fontSize: 12.sp,color: Colors.grey),),
                ],
              ),
              const Divider(color: Colors.grey,),
              Row(
                children:  [
                  Text('03',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                 const Spacer(),
                  Text('Total Amount: ',style: TextStyle(fontSize: 14.sp,color: Colors.grey),),
                  Text('\$2,890',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children:  [
                    SizedBox(
                   width: 90.w,
                   height: 40.h,
                   child: CustomButton(
                     text: 'Details',
                       textColor: Colors.white,
                       backgroundColor: kPrimaryColor,
                       onPressed: onPressed,
                   ),
                 ),
                  const  Spacer(),
                  TextButton(
                      onPressed:(){},
                      child:  Text(title,style: TextStyle(color: color,fontSize: 15.sp)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyOrderTabSection extends StatelessWidget {
  const MyOrderTabSection({Key? key, required this.title, required this.color, this.onPressed}) : super(key: key);
  final String title;
  final Color color;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children:   [
           SizedBox(height: 20.h,),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) =>   OrderCard(title:title ,color: color,onPressed:onPressed),
            ),
          ),
        ],
      ),
    );
  }
}

