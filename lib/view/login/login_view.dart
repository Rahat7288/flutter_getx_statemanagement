import 'package:flutter/material.dart';
import 'package:flutter_getx_statemanagement/utils/utils.dart';
import 'package:get/get.dart';

import '../../resources/componentes/round_button.dart';
import '../../view_models/controller/login/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginViewModel = Get.put(LoginViewModel());
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    loginViewModel.emailFocusNode.value.dispose();
    loginViewModel.passwordFocusNode.value.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('login'.tr),
      ),
      body: InkWell(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: loginViewModel.emailController.value,
                      focusNode: loginViewModel.emailFocusNode.value,
                      validator: (value) {
                        if (value!.isEmpty) {
                          Utils.snackBar('Email', 'Enter Email!');
                        }
                      },
                      onFieldSubmitted: (value) {
                        Utils.fieldFocusChange(
                          context,
                          loginViewModel.emailFocusNode.value,
                          loginViewModel.passwordFocusNode.value,
                        );
                      },
                      decoration: InputDecoration(
                        hintText: 'email_hint'.tr,
                        border: const OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: loginViewModel.passwordController.value,
                      focusNode: loginViewModel.passwordFocusNode.value,
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          Utils.snackBar('Password', 'Enter Password!');
                        }
                        return null;
                      },
                      onFieldSubmitted: (value) {
                        Utils.fieldFocusChange(
                          context,
                          loginViewModel.emailFocusNode.value,
                          loginViewModel.passwordFocusNode.value,
                        );
                      },
                      decoration: InputDecoration(
                        hintText: 'password'.tr,
                        border: const OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Obx(
                () => RoundButton(
                  title: 'login'.tr,
                  loading: loginViewModel.loading.value,
                  width: 200,
                  press: () {
                    if (_formKey.currentState!.validate()) {
                      loginViewModel.loginApi();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
