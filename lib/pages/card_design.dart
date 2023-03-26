// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import '../pages/signup_page.dart';

import '../constant/app_constants.dart';
import 'login_page.dart';

class CardDesign extends StatefulWidget {
  @override
  State<CardDesign> createState() => _CardDesignState();
}

class _CardDesignState extends State<CardDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          _renderBg(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _renderAppBar(context),
              Expanded(
                flex: 4,
                child: _renderContent(context),
              ),
              Expanded(
                child: Container(),
                flex: 1,
              ),
            ],
          )
        ],
      ),
    );
  }

  _renderBg() {
    return Container(
      decoration: BoxDecoration(color: Sabitler.genelRenk),
    );
  }

  _renderAppBar(context) {
    return MediaQuery.removePadding(
      context: context,
      removeBottom: true,
      child: AppBar(
        elevation: 0.0,
        backgroundColor: Sabitler.genelRenk,
      ),
    );
  }

  _renderContent(context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
      color: Sabitler.genelRenk,
      child: FlipCard(
          direction: FlipDirection.HORIZONTAL,
          speed: 1000,
          onFlipDone: (status) {
            print(status);
          },
          front: Container(
              decoration: BoxDecoration(
                color: Sabitler.genelRenk,
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: LoginPage()),
          back: SignupPage()),
    );
  }
}
