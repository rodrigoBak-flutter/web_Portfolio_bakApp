import 'package:flutter/material.dart';
import 'package:web_portfolio_perfil/components/default_button.dart';
import 'package:web_portfolio_perfil/components/url_launcher.dart';

import 'package:web_portfolio_perfil/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  final url = 'https://github.com/rodrigoBak-flutter';
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        constraints: BoxConstraints(maxWidth: 1110),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AboutTextWithSign(),
                Expanded(
                  child: AboutSectionText(
                    text:
                        "Me interesa trabajar en tecnología para colaborar en proyectos de alto impacto social, donde realmente pueda resolver las necesidades de las personas, aportando todo mi conocimiento en desarrollo, diseño y cumpliendo mi sueño de idear y crear servicios digitales en el mundo real.",
                  ),
                ),
                ExperienceCard(numOfExp: "5"),
                /*
                Expanded(
                  child: AboutSectionText(
                    text:
                        "",
                  ),
                ),
                 */
              ],
            ),
            SizedBox(height: kDefaultPadding * 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /*
                  MyOutlineButton(
                  imageSrc: "assets/images/hand.png",
                  text: "¡Contratame!",
                  press: () {},
                ),
                 */
              const  SizedBox(width: kDefaultPadding * 1.5),
                GestureDetector(
                  child: DefaultButton(
                    imageSrc: "assets/images/git.png",
                    text: "Ir a mi GitHub",
                    press: () {           
                    },
                  ),
                  onTap: () => openURL(url),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
