import 'package:flutter/material.dart';
import 'package:web_portfolio_perfil/components/default_button.dart';
import 'package:web_portfolio_perfil/components/section_title.dart';
import 'package:web_portfolio_perfil/constants.dart';

import 'components/socal_card.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // this height only for demo
      // height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contáctame",
            subTitle: "Para consultas e información sobre proyectos",
            color: Color(0xFF07E24A),
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        constraints: BoxConstraints(maxWidth: 1110),
        margin: EdgeInsets.only(top: kDefaultPadding * 2),
        padding: EdgeInsets.all(kDefaultPadding * 3),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SocalCard(
                  color: Color(0xFFD9FFFC),
                  iconSrc: "assets/images/skype.png",
                  name: 'Skype',
                  press: () {},
                ),
                SocalCard(
                  color: Color(0xFFE4FFC7),
                  iconSrc: "assets/images/whatsapp.png",
                  name: 'Whatsapp',
                  press: () {},
                ),
                SocalCard(
                  color: Color(0xFFE8F0F9),
                  iconSrc: "assets/images/messanger.png",
                  name: 'Messanger',
                  press: () {},
                ),
              ],
            ),
            SizedBox(height: kDefaultPadding * 2),
            ContactForm(),
          ],
        ),
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Nombre",
                hintText: "Ingrese su nombre",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Correo electronico",
                hintText: "Ingrese su correo electronico",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Tipo de proyecto",
                hintText: "Indique el tipo de proyecto",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Presupuesto del proyecto",
                hintText: "Indique su presupuesto",
              ),
            ),
          ),
          SizedBox(
            // height: 300,
            // TextField by default cover the height, i tryed to fix this problem but i cant
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Descripcion",
                hintText: "Escriba algo que lo describa",
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "assets/images/contact_icon.png",
                text: "Contáctame!",
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
