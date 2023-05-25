import 'package:e_commerce/features/cart/presentaion/view_model/counter_cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'inc_dec_button.dart';

class CartViewBody extends StatelessWidget {const CartViewBody({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height*.6,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.h),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return cartItem(
                    context,
                  );
                }),
          ),
        ),
         SizedBox(
          height: 30.h,
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: const [
              Text(
                "Subtotal:",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text('\$2,850.00',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
         SizedBox(
          height: 6.h,
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: const [
              Text(
                "Taxes:",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text('\$40',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        const Spacer(),
        Container(
          height: 60.h,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text('\$2,850.00',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold)),
                Container(
                    height: 30.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:  Center(
                        child: Text(
                      'PAY',
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                     ),
                    ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Future<dynamic> buildCartShowDialog(BuildContext context,) {
    return showDialog(
      context: context,
      builder: (context) => BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            content: SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IncDecButton(
                    widget: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onTap: () {
                      CounterCubit.get(context).add();
                    },
                  ),
                  Text(
                    '${CounterCubit.get(context).currentVal}',
                    style:  TextStyle(
                        fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  IncDecButton(
                    widget:  Center(
                        child: Text(
                      '-',
                      style: TextStyle(color: Colors.white, fontSize: 25.sp),
                    )),
                    onTap: () {
                      CounterCubit.get(context).min();
                    },
                  ),
                   SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    width: 150.w,
                    child: CustomButton(
                      backgroundColor: kPrimaryColor,
                      text: 'Add to Cart',
                      textColor: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget cartItem(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .23,
      child: Card(
        color: Colors.white,
        borderOnForeground: true,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100.w,
                height: 100.w,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Image.asset(
                  AssetsData.bag,
                  height: 40.w,
                  width: 40.w,
                )),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 8.w),
                child: SizedBox(
                  width: 170.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Samsung Galaxy Note 9 pro..',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                       SizedBox(
                        height: 12.h,
                      ),
                      Row(
                        children: [
                          const Text('Internal 1 TP :',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.grey,
                              )),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              buildCartShowDialog(
                                context,
                              );
                            },
                            child: Container(
                              height: 30.w,
                              width: 30.w,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                       SizedBox(
                        height: 12.h,
                      ),
                      const Text('\$950,00',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
