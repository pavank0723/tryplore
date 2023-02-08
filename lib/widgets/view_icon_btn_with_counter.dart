import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tryplore/res/app_colors.dart';

// import '../utils/size_config.dart';


class ViewIconBtnWithCounter extends StatelessWidget {
  const ViewIconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    this.numOfitem = 0,
    required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfitem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(12/375.0 * MediaQuery.of(context).size.width),
            height: 46/375.0 * MediaQuery.of(context).size.width,
            width: 46/812.0 * MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: AppColors.primaryLightest,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfitem != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: 16/375.0 * MediaQuery.of(context).size.width,
                width: 16/812.0 * MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "$numOfitem",
                    style: TextStyle(
                      fontSize: 10/375.0 * MediaQuery.of(context).size.width,
                      height: 1,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
