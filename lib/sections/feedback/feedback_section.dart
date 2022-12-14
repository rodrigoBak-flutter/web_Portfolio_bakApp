import 'package:flutter/material.dart';
import 'package:web_portfolio_perfil/components/section_title.dart';
import 'package:web_portfolio_perfil/constants.dart';
import 'package:web_portfolio_perfil/models/Feedback.dart';

import 'components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
        constraints: BoxConstraints(maxWidth: 1110),
        child: Column(
          children: [
            SectionTitle(
              title: "Feedback Received",
              subTitle: "Client’s testimonials that inspired me a lot",
              color: Color(0xFF00B1FF),
            ),
            SizedBox(height: kDefaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                feedbacks.length,
                (index) => FeedbackCard(index: index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
