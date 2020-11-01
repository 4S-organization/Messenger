import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messenger/Widgets/CustomIcons.dart';
import 'Widgets/SocialIcons.dart';


class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset('assets/sign_in_page_logo.svg', height: 300, width: 300)
          ),
          SizedBox(height: 50),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  height: 70,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                      color: Colors.amber,
                      blurRadius: 8
                    )]
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Введите электронный адрес',
                      hintStyle: TextStyle(fontSize: 15)
                    ),
                    onSaved: (input) => _email = input
                  )
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(15),
                  height: 70,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                      color: Colors.amber,
                      blurRadius: 8
                    )]
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Введите пароль',
                      hintStyle: TextStyle(fontSize: 15)
                    ),
                    onSaved: (input) => _password = input,
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SocialIcon(
                      colors: [
                        Color(0xFF102397),
                        Color(0xFF187adf),
                        Color(0xFF00eaf8)
                      ],
                      iconData: CustomIcons.facebook,
                      onPressed: () {},
                    ),
                    SocialIcon(
                        colors: [
                          Color(0xFFff4f38),
                          Color(0xFFff355d)
                        ],
                        iconData: CustomIcons.googlePlus,
                        onPressed: () {}
                    ),
                    SocialIcon(
                        colors: [
                          Color(0xFF17ead9),
                          Color(0xFF6078ea)
                        ],
                        iconData: CustomIcons.twitter,
                        onPressed: () {}
                    )
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Center(
                              child: Text('Регистрация', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 120,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Center(
                              child: Text('Вход', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}