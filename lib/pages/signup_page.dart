import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_row_column.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../constant/app_constants.dart';

enum FormType { Register, LogIn }

class SignupPage extends StatefulWidget {
  SignupPage({
    Key? key,
  }) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String? _email, _sifre; //_nameLastName;
  //final _formType = BoolCallback;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              color: Sabitler.genelRenk,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Create Account',
                  style: Sabitler.genelText,
                ),
                SizedBox(height: 10),
                //_adSignupInput(),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 5,
                ),
                _emailSignupInput(),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 5,
                ),
                _sifreSignupInput(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _emailSignupInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ignore: prefer_const_constructors
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          height: 60.0,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding: EdgeInsets.only(top: 14.0),
                  // ignore: prefer_const_constructors
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  hintText: "Your Email",
                  hintStyle: Sabitler.hintText,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Column _sifreSignupInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ignore: prefer_const_constructors
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          height: 60.0,
          child: TextFormField(
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              contentPadding: EdgeInsets.only(top: 14.0),
              // ignore: prefer_const_constructors
              prefixIcon: Icon(
                Icons.password,
              ),
              suffixIcon: Icon(Icons.visibility),
              hintText: "Password",
              hintStyle: Sabitler.hintText,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 25),
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: Color.fromRGBO(243, 124, 124, 1),
              minimumSize: Size(327, 50),
              foregroundColor: Colors.white,
              shadowColor: Colors.black,
            ),
            child: Text(
              "Register",
              style: Sabitler.butonText,
            ),
            //color: Colors.cyan.shade100,
            onPressed: () {},
          ),
        ),
        ResponsiveRowColumn(
          rowMainAxisAlignment: MainAxisAlignment.center,
          rowPadding: const EdgeInsets.all(30),
          columnPadding: const EdgeInsets.all(30),
          layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                alignment: Alignment.center,
                child: Text(
                  "-Or sign in with-",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            // const SizedBox(
            //   height: 15,
            // ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 55,
                      decoration: BoxDecoration(
                          //color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 10)
                          ]),
                      child: SvgPicture.asset(
                        'assets/images/facebook_logo.svg',
                        height: 50,
                      ),
                      // ignore: prefer_const_constructors
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 55,
                      decoration: BoxDecoration(
                          //color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 10)
                          ]),
                      child: SvgPicture.asset(
                        'assets/images/apple_logo.svg',
                        height: 50,
                      ),
                      // ignore: prefer_const_constructors
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 55,
                      decoration: BoxDecoration(
                          //color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 10)
                          ]),
                      child: SvgPicture.asset(
                        'assets/images/google_logo.svg',
                        height: 35,
                      ),
                      // ignore: prefer_const_constructors
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }

/*
  Column _adSignupInput() {
    final _userModel = Provider.of<UserModel>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Ad Soyad", style: Sabitler.butonText),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          decoration: Sabitler.inputStyle,
          height: 60.0,
          child: TextFormField(
            onSaved: (String? girilenNameLastName) {
              _nameLastName = girilenNameLastName;
            },
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              hintText: "Lütfen Ad Soyad Giriniz...",
              hintStyle: Sabitler.hintText,
            ),
          ),
        )
      ],
    );
  }
*/
}
