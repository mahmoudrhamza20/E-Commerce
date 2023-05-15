
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/core/utils/magic_router.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form.dart';


class AddAddressView extends StatelessWidget {
  AddAddressView({Key? key}) : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController ciryController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController zipController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: 'Add Address'),
      body:AddAddressViewBody(formKey: formKey, countryController: countryController, addressController: addressController, ciryController: ciryController, nameController: nameController, zipController: zipController, districtController: districtController),
    );
  }
}

class AddAddressViewBody extends StatelessWidget {
  const AddAddressViewBody({
    super.key,
    required this.formKey,
    required this.countryController,
    required this.addressController,
    required this.ciryController,
    required this.nameController,
    required this.zipController,
    required this.districtController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController countryController;
  final TextEditingController addressController;
  final TextEditingController ciryController;
  final TextEditingController nameController;
  final TextEditingController zipController;
  final TextEditingController districtController;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics:const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Form(
            key: formKey,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(height: 22.h,),
                  SectionOfAddAddress(text: 'Full Name', controller: nameController,hint: 'John Doe'),
                   SizedBox(height: 10.h,),
                  SectionOfAddAddress(text: 'Address', controller: addressController,hint: '78th Main Road, 1000fh Road....'),
                 SizedBox(height: 10.h,),
                  SectionOfAddAddress(text: 'Zip Code', controller: zipController,hint: '395006'),
                  SizedBox(height: 10.h,),
                  SectionOfAddAddress(text: 'Country', controller: countryController,hint: 'Select Country'),
                  SizedBox(height: 10.h,),
                  SectionOfAddAddress(text: 'city', controller: ciryController,hint: 'Select City'),
                  SizedBox(height: 10.h,),
                  SectionOfAddAddress(text: 'District', controller: districtController,hint: 'Select District'),
                 SizedBox(height: 10.h,),
                  CustomButton(text: 'Save Address',
                      textColor: Colors.white,
                      backgroundColor: kPrimaryColor,
                      borderRadius: BorderRadius.circular(24),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          MagicRouter.pop();
                        }
                      }),
                  SizedBox(height: 10.h,),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class SectionOfAddAddress extends StatelessWidget {
  const SectionOfAddAddress({
    Key? key,
    required this.controller, required this.text, required this.hint,}) : super(key: key);

  final TextEditingController controller;
  final String text;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,style: Styles.textStyle14,),
        SizedBox(height: 8.h,),
        CustomTextFormField(
          isPrefix: false,
          isBorder: false,
          controller: controller,
          hintText: hint,
          prefix: Icons.person_2_outlined,
          inputType: TextInputType.name,
          validator: (data){
            if(data!.isEmpty){
              return '$text can\'t be empty';
            }
            return null;
          },
        ),
        // TextFormField(
        //   controller: controller,
        //   validator: (data){
        //     if(data!.isEmpty){
        //       return '$text can\'t be empty';
        //     }
        //     return null;
        //   },
        //   decoration: const InputDecoration(
        //       contentPadding: EdgeInsets.only(left: 8),
        //       border: OutlineInputBorder()
        //   ),
        // ),
      ],
    );
  }
}