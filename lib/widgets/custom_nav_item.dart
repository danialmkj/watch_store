
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavItem extends StatelessWidget {
  const CustomNavItem({
    super.key,
    required this.svgPath,
    required this.navItemText,
    required this.onTap,
    required this.isActive,
  });

  final String svgPath;
  final String navItemText;
  final void Function() onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: onTap,
            icon: SvgPicture.asset(
              svgPath,
              colorFilter: ColorFilter.mode(
                  isActive ? Colors.black : Colors.grey, BlendMode.srcIn),
            )),
        Text(
          navItemText,
          style: TextStyle(color: isActive ? Colors.black : Colors.grey),
        )
      ],
    );
  }
}
