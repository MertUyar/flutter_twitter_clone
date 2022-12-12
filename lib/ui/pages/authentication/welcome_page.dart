import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone_app/size_config.dart';
import 'package:flutter_twitter_clone_app/ui/theme/theme.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/title_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  final String mainText = 'See what\'s happening in the world right now.';
  final String createAccountText = 'Create Account';
  final String bottomText1 = 'Have an account already? ';
  final String bottomText2 = 'Log in';

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(35)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/icon-48.png',
                ),
              ),
              const Spacer(),
              Center(
                child: TitleText(
                  mainText,
                  fontSize: getProportionateScreenWidth(22),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(35)),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  height: getProportionateScreenHeight(40),
                  width: double.infinity,
                  child: Center(
                    child: TitleText(
                      createAccountText,
                      color: TwitterColor.white,
                      fontSize: getProportionateScreenWidth(15),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.start,
                children: [
                  TitleText(
                    bottomText1,
                    fontSize: getProportionateScreenWidth(12),
                    fontWeight: FontWeight.w400,
                  ),
                  InkWell(
                    onTap: () {
                      context.goNamed('login');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 2, vertical: 10),
                      child: TitleText(
                        ' Log in',
                        fontSize: getProportionateScreenWidth(12),
                        color: TwitterColor.dodgetBlue,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
