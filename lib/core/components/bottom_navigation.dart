import 'package:aromaqueen/core/constants/icon_const.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/icon_render.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatelessWidget {
  final Function(int) onChanged;
  final int menuIndex;
  const BottomNavigation({
    super.key,
    required this.menuIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorConstants.primaryLight,
      selectedItemColor: ColorConstants.primaryDark,
      unselectedItemColor: ColorConstants.gray,
      unselectedLabelStyle: TextStyle(color: ColorConstants.gray),
      currentIndex: menuIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: iconRender(
            url: IconConst.homeIcon,
            color:
                menuIndex == 0
                    ? ColorConstants.primaryDark
                    : ColorConstants.gray,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: iconRender(
            url: IconConst.oilIcon,
            color:
                menuIndex == 1
                    ? ColorConstants.primaryDark
                    : ColorConstants.gray,
          ),
          label: 'Essential Oil',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            IconConst.gradIcon,
            color:
                menuIndex == 2
                    ? ColorConstants.primaryDark
                    : ColorConstants.gray,
          ),
          label: 'Training',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            IconConst.community,
            color:
                menuIndex == 3
                    ? ColorConstants.primaryDark
                    : ColorConstants.gray,
          ),
          label: 'Community',
        ),
      ],
      onTap: onChanged,
    );
  }
}
