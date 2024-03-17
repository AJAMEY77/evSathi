import 'package:evsathi/screens/modal_sheet_details.dart';
import 'package:flutter/material.dart';

class SearchStation extends StatelessWidget {
  const SearchStation({super.key});

  @override
  Widget build(BuildContext context) {
      final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;
    return LayoutBuilder(builder: (ctx,constraints){ //imp
    // ignore: unused_local_variable
    final width = constraints.maxWidth; //imp

    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.fromLTRB(10, 16, 10, keyboardSpace + 16),
        child: Station_details(),
        ),
      ),
    );
  });
  }
}