import 'package:e_commerce/core/utils/magic_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../features/drawer/presentation/view/add_address_view.dart';
import '../../features/drawer/presentation/view/widgets/address_item.dart';
import '../../features/drawer/presentation/view/widgets/details_of_payment.dart';
import '../../translations/locale_keys.g.dart';
import '../utils/constants.dart';
import '../widgets/custom_button.dart';

Future descriptionViewMore(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r), topRight: Radius.circular(16.r))),
    builder: (context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * .5,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                LocaleKeys.description.tr(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14.sp,
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

Future<dynamic> buildShowModalBottomSheetOfProductDetail(BuildContext context,
    [isDetails = false]) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      int currentIndex = 0;
      return StatefulBuilder(builder:
          (BuildContext context, void Function(void Function()) setState) {
        return SizedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50.h,
                  decoration: BoxDecoration(color: Colors.grey.shade100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        LocaleKeys.savedAddress.tr(),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                          onTap: () => isDetails
                              ? Navigator.pop(context)
                              : MagicRouter.navigateAndPopUntilFirstPage(
                                  AddAddressView()),
                          child: Text(
                            LocaleKeys.addNewAddress.tr(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor),
                          )),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: InkWell(
                          onTap: () {
                            currentIndex = index;
                            setState(
                              () {},
                            );
                          },
                          child: AddressItem(
                            isPay: true,
                            index: index,
                            selectedIndex: currentIndex == index,
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  onPressed: () =>
                      MagicRouter.navigateTo(const DetailsOfPayment()),
                  text: LocaleKeys.confirmAddress.tr(),
                  textColor: Colors.white,
                  backgroundColor: kPrimaryColor,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        );
      });
    },
  );
}
