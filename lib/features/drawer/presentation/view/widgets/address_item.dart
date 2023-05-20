import 'package:flutter/material.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/magic_router.dart';
import '../../../../../core/utils/styles.dart';
import '../add_address_view.dart';

class AddressItem extends StatefulWidget {
  const  AddressItem({
    Key? key,  required this.index,  this.isPay = false ,
  }) : super(key: key);

final int index;
final bool isPay;
  @override
  State<AddressItem> createState() => _AddressItemState();
}

class _AddressItemState extends State<AddressItem> {
  bool selectedIndex = false ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
       // selected =widget.index ;
        selectedIndex = !selectedIndex ;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: selectedIndex?Colors.green.shade200:Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: selectedIndex?Colors.green: const Color(0xffE5E5E5))),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                   Icon(Icons.home,color:selectedIndex?Colors.green:Colors.black,),
                  Text('Home Address',style:Styles.textStyle14.copyWith(overflow: TextOverflow.ellipsis,color: selectedIndex?Colors.green:Colors.black,) ,),
                  const Spacer(),
                widget.isPay?Container() : IconButton(onPressed: ()=>MagicRouter. navigateTo( AddAddressView()), icon:  const Icon(Icons.edit_outlined,color: kPrimaryColor,))
                ],
              ),
              // const SizedBox(height: 15,),
              Text('John Doe',style:Styles.textStyle14.copyWith(overflow: TextOverflow.ellipsis) ,),
              const SizedBox(height: 5,),
              Text('+99 1234567890',style:Styles.textStyle12.copyWith(overflow: TextOverflow.ellipsis) ,),
              const SizedBox(height: 5,),
              Text('3711 Spring Hill Rd undefined Tallahassee, Nevada 5287420 United States',maxLines:2,style:Styles.textStyle12.copyWith(color:Colors.black45,overflow: TextOverflow.ellipsis) ,),
            ],
          ),
        ),

      ),
    );
  }
}