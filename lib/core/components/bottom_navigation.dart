import 'package:aromaqueen/core/constants/icon_const.dart';
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
      backgroundColor: Color(0xff90A4AE),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      unselectedLabelStyle: TextStyle(color: Colors.white),
      currentIndex: menuIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: iconRender(url: IconConst.homeIcon),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: iconRender(url: IconConst.coursesIcon),
          label: 'Courses',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(IconConst.comunityIcon),
          label: 'Community',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(IconConst.shopIcon),
          label: 'Shop',
        ),
      ],
      onTap: onChanged,
    );
  }
}
