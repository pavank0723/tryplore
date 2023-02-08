import 'package:flutter/material.dart';
import 'package:tryplore/res/app_colors.dart';

// import '../utils/size_config.dart';

class ViewSearchField extends StatelessWidget {
  const ViewSearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        color: AppColors.greyLightest,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: 20/375.0 * MediaQuery.of(context).size.width,
                vertical: 9/812.0 * MediaQuery.of(context).size.height),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search product",
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}
