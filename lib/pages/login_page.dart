import 'package:flutter/material.dart';

import '../constant/app_constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _email, _sifre;
  final _formKey = GlobalKey<FormState>();
  bool _tikOkeyMi = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'LOGİN',
          style: Sabitler.genelText,
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 15,
        ),
        _emailInput(),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 15,
        ),
        _sifreInput()
      ],
    );
  }

  _emailInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ignore: prefer_const_constructors
        SizedBox(
          height: 10,
        ),
        Form(
          key: _formKey,
          child: Container(
            alignment: Alignment.center,
            //decoration: Sabitler.inputStyle,
            height: 60.0,
            child: TextFormField(
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
          ),
        )
      ],
    );
  }

  _sifreInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          //decoration: Sabitler.inputStyle,
          height: 60.0,
          child: TextField(
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
          alignment: Alignment.centerRight,
          child: TextButton(
              child: Text(
                "I forgot my password",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.w600),
              ),
              onPressed: () {}),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Text(
            "Please click to register",
            style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontWeight: FontWeight.w300),
          ),
        ),
        Container(
          child: Row(
            children: [
              Theme(
                data: ThemeData(unselectedWidgetColor: Colors.white),
                child: Checkbox(
                  value: _tikOkeyMi,
                  onChanged: (value) {
                    setState(() {
                      _tikOkeyMi = value!;
                    });
                  },
                  checkColor: Colors.blue,
                  activeColor: Colors.white,
                ),
              ),
              Text(
                "Remember me",
                style: Sabitler.hintText,
              )
            ],
          ),
        ),
        buttonLogin(),
      ],
    );
  }

  Container buttonLogin() {
    return Container(
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
          "Login",
          style: Sabitler.butonText,
        ),
        //color: Colors.cyan.shade100,
        onPressed: () {},
      ),
    );
  }
}
