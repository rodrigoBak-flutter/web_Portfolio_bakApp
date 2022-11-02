import 'package:flutter/material.dart';
import 'package:web_portfolio_perfil/components/section_title.dart';
import 'package:web_portfolio_perfil/constants.dart';
import 'package:web_portfolio_perfil/models/Service.dart';

import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        constraints: BoxConstraints(maxWidth: 1110),
        child: Column(
          children: [
            SectionTitle(
              color: Color(0xFFFF0000),
              title: "Service Offerings",
              subTitle: "My Strong Arenas",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  services.length, (index) => ServiceCard(index: index)),
            )
          ],
        ),
      ),
    );
  }
}
