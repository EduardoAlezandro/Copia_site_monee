import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/Quem_somos/controllers/quem_somos_controller.dart';

class WebView extends StatefulWidget {
  BuildContext context;
  QuemSomosController controller;

  WebView(this.context, this.controller, {Key? key}) : super(key: key);

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
