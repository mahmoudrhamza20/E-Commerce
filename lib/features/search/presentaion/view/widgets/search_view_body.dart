import 'package:e_commerce/features/search/presentaion/view/widgets/search_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/custom_text_form.dart';
import '../../../../../translations/locale_keys.g.dart';

class SearchViewBody extends StatelessWidget {
  SearchViewBody({Key? key}) : super(key: key);
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          CustomTextFormField(
            // isBorder: false,
            isPrefix: false,
            suffix: Icons.search_outlined,
            controller: searchController,
            hintText: LocaleKeys.searchProductName.tr(),
            prefix: Icons.lock_outline_rounded,
            // suffixPressed: (){},
            // onSubmitted: (value){},
            inputType: TextInputType.visiblePassword,
            validator: (data) {
              if (data!.isEmpty) {
                return LocaleKeys.enterwhatwouldyouwanttosearchabout.tr();
              }
              return null;
            },
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            LocaleKeys.recent.tr(),
            style: const TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 15.h,
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) => const SearchItem(),
            ),
          ),
        ],
      ),
    );
  }
}
