import 'package:flutter/material.dart';
import 'package:web_portfolio_perfil/constants.dart';
import 'package:web_portfolio_perfil/sections/about/about_section.dart';
import 'package:web_portfolio_perfil/sections/contact/contact_section.dart';
import 'package:web_portfolio_perfil/sections/feedback/feedback_section.dart';
import 'package:web_portfolio_perfil/sections/recent_work/recent_work_section.dart';
import 'package:web_portfolio_perfil/sections/service/service_section.dart';
import 'package:web_portfolio_perfil/sections/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
           const SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            FeedbackSection(),
          const  SizedBox(height: kDefaultPadding),
            ContactSection(),
            // This SizeBox just for demo
            // SizedBox(
            //   height: 500,
            // )
          ],
        ),
      ),
    );
  }
}
