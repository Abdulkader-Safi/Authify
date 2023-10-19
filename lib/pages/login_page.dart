import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static late double _deviceHeight;
  static late double _deviceWidth;

  static const Color _primaryColor = Color.fromRGBO(125, 191, 211, 1.0);
  static const Color _secondaryColor = Color.fromRGBO(169, 224, 241, 1.0);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: _primaryColor,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _avatarWidget(),
          ],
        ),
      ),
    );
  }

  Widget _avatarWidget() {
    double? circleD = _deviceHeight * 0.25;
    return Container(
      height: circleD,
      width: circleD,
      decoration: BoxDecoration(
        color: _secondaryColor,
        borderRadius: BorderRadius.circular(500),
        image: const DecorationImage(
          image: AssetImage('assets/images/main_avatar.png'),
        ),
      ),
    );
  }
}
