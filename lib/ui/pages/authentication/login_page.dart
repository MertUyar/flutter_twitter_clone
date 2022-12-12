import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone_app/size_config.dart';
import 'package:flutter_twitter_clone_app/ui/widgets/custom_text_field.dart';
import 'package:flutter_twitter_clone_app/ui/widgets/title_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  final String signInText = 'Sign in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,
        leading: Icon(Icons.arrow_back_rounded),
        elevation: 0,
        centerTitle: true,
        title: TitleText(signInText),
      ),
      body: SafeArea(
        child: Container(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(35)),
          child: Column(
            children: [
              const Spacer(),
              CustomTextField(),
            ],
          ),
        ),
      ),
    );
  }
}
