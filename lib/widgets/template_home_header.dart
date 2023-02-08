import 'package:flutter/material.dart';
import 'package:tryplore/res/app_images.dart';
import 'package:tryplore/widgets/widgets.dart';

// import '../utils/size_config.dart';

class TemplateHomeHeader extends StatelessWidget {
  const TemplateHomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 20/375.0 * MediaQuery.of(context).size.width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ViewSearchField(),
          ViewIconBtnWithCounter(
            svgSrc: AppImages.icMenu1,
            // press: () => Navigator.pushNamed(context, ""),
            press: (){},
          ),
          ViewIconBtnWithCounter(
            svgSrc: AppImages.icMenu1,
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
