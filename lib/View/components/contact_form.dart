import 'package:flutter/material.dart';
import 'package:portfolio/Reposnive/responsive.dart';
import 'package:portfolio/Utils/colors.dart';
import 'package:portfolio/Utils/text_style.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Get In Touch With Me',
          style: AppTextStyle.heebo25Nor800white,
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) * 0.9
              : Responsive.widthOfScreen(context) * 0.7,
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: shadoColor,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  contactFormField("Name*", 1, "Your Name"),
                  contactFormField("Email*", 1, "Your Email"),
                  contactFormField("Phone Number", 1, "Your Number"),
                  contactFormField("Message*", 10, "Your Message"),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  contactFormField(name, maxLine, hintText) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: TextField(
              maxLines: maxLine,
              decoration: InputDecoration(
                  hintText: hintText,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}