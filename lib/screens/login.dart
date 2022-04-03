import 'package:flutter/material.dart';

import '../components/input.dart';

const style = TextStyle(fontWeight: FontWeight.bold);

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: const Color(0xfff6f6f6),
      child: (Column(
        children: [
          Form(
              child: Wrap(
            alignment: WrapAlignment.start,
            children: [
              const AppInput(
                  text: 'Nhập email của bạn', icon: Icon(Icons.email_outlined)),
              const AppInput(
                text: 'Nhập mật khẩu của bạn',
                icon: Icon(Icons.lock_outline),
                hide: true,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                // ignore: deprecated_member_use
                child: FlatButton(
                  color: const Color(0xff5D6D7E),
                  textColor: Colors.white,
                  onPressed: () {},
                  minWidth: width,
                  height: 45,
                  child: const Text('Đăng nhập'),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0,
                          style: BorderStyle.solid,
                          color: Color(0xff5D6D7E)),
                      borderRadius: BorderRadius.circular(50)),
                ),
              )
            ],
          )),
        ],
      )),
    );
  }
}
