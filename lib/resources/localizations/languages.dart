import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Enter Email',
          'password_hint': 'Password',
          'internet_exception':
              "we're unable to show results. \n Please check your data \n connections",
          'login': 'Login'
        },
        'bn_BN': {'email_hint': 'ইমেইল প্রদান করুন'}
      };
}
