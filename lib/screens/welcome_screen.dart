import 'package:flutter/material.dart';
import 'package:requenes0397/screens/signin_screen.dart';
import 'package:requenes0397/screens/signup_screen.dart';
import 'package:requenes0397/theme/theme.dart';
import 'package:requenes0397/widgets/custom_scaffold.dart';
import 'package:requenes0397/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'Bienvenido de nuevo!\n',
                            style: TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                            text: '\nIngresa tus datos personales',
                            style: TextStyle(
                              fontSize: 20,
                              // height: 0,
                            ))
                      ],
                    ),
                  ),
                ),
              )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                    child: WelcomeButton(
                      buttonText: 'Iniciar',
                      onTap: SignInScreen(),
                      color: Colors.transparent,
                      textColor: Color(0xff000000),
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Registrar',
                      onTap: const SignUpScreen(),
                      color: Color(0xff840000),
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
