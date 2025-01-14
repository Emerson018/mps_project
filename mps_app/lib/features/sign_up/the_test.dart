import 'package:flutter/material.dart';
import 'package:mps_app/common/widgets/custom_text_form_field.dart';


class the_test extends StatelessWidget {
  const the_test({super.key});

      @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Form(
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: "Nome",
                  hintText: "Elon Musk",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}