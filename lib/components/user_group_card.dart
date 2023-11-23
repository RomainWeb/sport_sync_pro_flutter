import 'dart:ffi';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport_sync_pro_flutter/common/enums/day_enum.dart';
import 'package:sport_sync_pro_flutter/domain/userGroup/entities/user_group_entity.dart';
import 'package:sport_sync_pro_flutter/router.dart';

import '../domain/utils/colors.dart';

class UserGroupCard extends StatelessWidget {
  late UserGroupEntity? userGroup;

  UserGroupCard({
    super.key,
    this.userGroup,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(UsersGroupDetailsRoute(bookId: '1'));
      },
      child: Container(
        padding:  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.backgroundLight,
          gradient:  const LinearGradient(
              stops:  [0.02, 0.02],
              colors: [AppColors.secondaryColor, Color(0xfff5f5f5)]
          ),
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Lundi 1',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${userGroup!.day.value.toString()} de 18h00 à 19h30',
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${userGroup!.playerIds.length} joueur(s)',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const Icon(FontAwesomeIcons.chevronRight, color: AppColors.greyLight,)
          ],
        ),
      ),
    );
  }
}
