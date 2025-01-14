import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mps_app/common/constants/app_colors.dart';
import 'package:mps_app/common/constants/app_text_style.dart';
import 'package:mps_app/common/widgets/custom_text_button.dart';
import 'package:mps_app/common/widgets/custom_text_form_field.dart';
import 'package:mps_app/common/widgets/password_form_field.dart';
import 'package:mps_app/common/widgets/primary_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            'Começe criando a',
            textAlign: TextAlign.center,
            style: AppTextStyles.mediumText.copyWith(
              color: AppColors.greenlightTwo,
            ),
          ),

          Text(
            'sua conta!',
            textAlign: TextAlign.center,
            style: AppTextStyles.mediumText.copyWith(
              color: AppColors.greenlightTwo,
            ),
          ),

          Image.asset(
            'assets/images/todolist.png',
          ),

          Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: "Nome",
                  hintText: "Elon Musk",
                  validator: (value) {
                    if(value != null && value.isEmpty){
                      return "Este campo não pode estar vazio.";
                    }
                    return null;
                  },
                ),

                CustomTextFormField(
                  labelText: "your email",
                  hintText: "john@email.com",
                  validator: (value) {
                    if(value != null && value.isEmpty){
                      return "Este campo não pode estar vazio.";
                    }
                    return null;
                  },
                ),

                PasswordFormField(
                  labelText: "Escolha sua senha",
                  hintText: "********",
                  validator: (value) {
                    if(value != null && value.isEmpty){
                      return "Este campo não pode estar vazio.";
                    }
                    return null;
                  },
                ),

                PasswordFormField(
                  labelText: "Confirme sua senha",
                  hintText: "********",
                  validator: (value) {
                    if(value != null && value.isEmpty){
                      return "Este campo não pode estar vazio.";
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 16.0,
            ),

            child: PrimaryButton(
              text: 'Criar Conta',
              onPressed: () {
                final valid = _formKey.currentState != null && _formKey.currentState!.validate();
                if(valid){
                  print('continuar logica de login'); 
                }else {
                  print("erro ao logar!");
                }
              },
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Já possui uma conta?',
                style: AppTextStyles.smallText.copyWith(
                  color: AppColors.grey,
                ),
              ),
              CustomTextButton(),
            ],
          ),
        ],
      ),
    );
  }
}