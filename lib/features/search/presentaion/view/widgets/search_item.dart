
import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(Icons.watch_later_outlined),
      title: Text('Action Camera'),
      trailing:Icon(Icons.close,color: Colors.black,),
    );
  }
}