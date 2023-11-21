import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport_sync_pro_flutter/domain/utils/colors.dart';
import 'package:sport_sync_pro_flutter/pages/profile/user_profile_page.dart';

class TopNavBar extends StatelessWidget implements PreferredSizeWidget {
  final bool hasLeading;
  void Function()? leadingOnPressed;

  TopNavBar({
    super.key,
    this.hasLeading = false,
    this.leadingOnPressed,
  });


  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: hasLeading ? IconButton(
        icon: const Icon(
            Icons.arrow_back,
            color: AppColors.primaryColorDarker
        ),
        onPressed: () => leadingOnPressed!(),
      ) : null,
      backgroundColor: AppColors.primaryColorDarker,
      elevation: 0,
      actions: [
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.user),
          color: Colors.white,
          iconSize: 16.0,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          onPressed: () => {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => const UserProfilePage())
            )
          },
        ),
      ]
    );
  }
}


