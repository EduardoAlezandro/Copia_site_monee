import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/rotate.dart';
import 'package:flutter_application_1/app/modules/Ajuda/controllers/ajuda_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_icons/animate_icons.dart';

class WebViewAjuda extends StatelessWidget {
  BuildContext context;
  AjudaController controller;

  WebViewAjuda(
    this.context,
    this.controller,
  );

  @override
  Widget build(BuildContext context) {
    late Animation<double> animation;
    late AnimationController controllerr;
    controllerr = AnimationController(
        vsync: Scaffold.of(context), duration: Duration(milliseconds: 700));

    Size size = MediaQuery.of(context).size;
    double screenwidth = 0;
    double screenheight = 0;
    final Duration duration = const Duration(milliseconds: 300);
    screenwidth = size.width;
    screenheight = size.height;

    void setRotation(int degrees) {
      final angle = degrees * pi / 180;
      animation = Tween<double>(begin: 0, end: angle).animate(controllerr);
      setRotation(90);
    }

    late int degrees = 90;
    final angle = degrees * pi / 180;

    animation = Tween<double>(begin: 0, end: angle).animate(controllerr);

    return

        //APPBAR INICIO ******************************************************************
        SingleChildScrollView(
            child: Material(
                elevation: 15,
                color: Color(0xff059f77),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black26,
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 20),
                    child: Column(children: <Widget>[
                      _appbarwev(),
                      Bodye1(context),
                      bodyVerde(context),
                      bodywhite(context, controller, controllerr, animation),
                      footerWB()
                    ]))));
  }
}

_appbarwev<Widget>() => Material(
      elevation: 8,
      child: Container(
        height: 75,
        color: Color(0xff181c1b),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
                padding: const EdgeInsets.all(0),
                child: OutlinedButton(
                  onPressed: () {
                    Get.toNamed('/home');
                  },
                  child: LimitedBox(
                      maxWidth: 75,
                      maxHeight: 75,
                      child: Image.asset("assets/image/logo.png")),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Get.toNamed('/quem-somos');
                },
                child: Text(
                  "Quem somos",
                  style: GoogleFonts.montserrat(
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 12)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Get.toNamed('/consiguinado-privado');
                },
                child: Text(
                  "Consiginado Privado",
                  style: GoogleFonts.montserrat(
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 12)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Get.toNamed('/para-voce');
                },
                child: Text(
                  "Para você",
                  style: GoogleFonts.montserrat(
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 12)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Get.toNamed('/para-empresas');
                },
                child: Text(
                  "Para empresas",
                  style: GoogleFonts.montserrat(
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 12)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Text(
                  "Blog",
                  style: GoogleFonts.montserrat(
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 12)),
                ),
                onPressed: () {
                  Get.toNamed('/blog');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Text(
                  "Ajuda",
                  style: GoogleFonts.montserrat(
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 12)),
                ),
                onPressed: () {
                  Get.toNamed('/ajuda');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1)),
                  child: OutlinedButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Text(
                      "Quem Ajuda",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Colors.white, fontSize: 9)),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );

bodyVerde(context) => Material(
      elevation: 8,
      child: Container(
          color: Color(0xff059f77),
          width: MediaQuery.of(context).size.width / 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      "Digite aqui a palavra-chave",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              TextStyle(fontSize: 35, color: Colors.white)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: Container(
                      width: 400,
                      height: 30,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 60,
              ),
            ],
          )),
    );

bodywhite(context, controller, controllerr, animation) => Material(
      elevation: 8,
      child: Container(
        margin: EdgeInsets.fromLTRB(100, 0, 100, 100),
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          children: [
            Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 50, top: 50),
                  child: Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      AnimatedCrossFade(
                          firstChild: GestureDetector(
                            onTap: () {
                              if (controller.efeitoclick.value == true) {
                                controller.efeitoclick.value = false;
                              } else {
                                controller.efeitoclick.value = true;
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: (Border.all(
                                      style: BorderStyle.solid,
                                      color: Color(0xff059f77)))),
                              width: 350,
                              height: 100,
                              child: Stack(children: [
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text(
                                    "O QUE E EMPRÉSTIMO CONSIGNADO PRIVADO",
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize: 18),
                                        color: Color(0xff059f77)),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          secondChild: GestureDetector(
                            onTap: () {
                              if (controller.efeitoclick.value == true) {
                                controller.efeitoclick.value = false;
                              } else {
                                controller.efeitoclick.value = true;
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: (Border.all(
                                      style: BorderStyle.solid,
                                      color: Color(0xff059f77)))),
                              width: 350,
                              height: 300,
                              child: Padding(
                                padding: const EdgeInsets.all(28.0),
                                child: Text(
                                  "É uma modalidade de crédito regulamentada pela Lei Federal 10.820/2003 em que as parcelas não ultrapassam 30% do salário líquido e são descontadas no holerite do colaborador.",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(fontSize: 15),
                                      color: Color(0xff059f77)),
                                ),
                              ),
                            ),
                          ),
                          crossFadeState: controller.efeitoclick.value
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                          duration: Duration(milliseconds: 650)),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
                          child: AnimatedBuilder(
                            animation: animation,
                            child: GestureDetector(
                              onTap: () {
                                controller.forward(from: 0);
                              },
                              child: Icon(
                                Icons.arrow_downward_outlined,
                                size: 40,
                                color: Colors.black,
                              ),
                            ),
                            builder: (context, child) => Transform.rotate(
                              angle: animation.value,
                            ),
                          )),
                      Icon(
                        Icons.arrow_downward_outlined,
                        size: 40,
                        color: Colors.black,
                      ),
                    ],
                  ),
                )),
            //1
            Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 50, top: 50),
                  child: AnimatedCrossFade(
                      firstChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick1.value == true) {
                            controller.efeitoclick1.value = false;
                          } else {
                            controller.efeitoclick1.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 100,
                          color: Colors.red,
                        ),
                      ),
                      secondChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick1.value == true) {
                            controller.efeitoclick1.value = false;
                          } else {
                            controller.efeitoclick1.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 500,
                          color: Colors.blue,
                        ),
                      ),
                      crossFadeState: controller.efeitoclick1.value
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 500)),
                )),
            //2
            Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 50, top: 50),
                  child: AnimatedCrossFade(
                      firstChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick2.value == true) {
                            controller.efeitoclick2.value = false;
                          } else {
                            controller.efeitoclick2.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 100,
                          color: Colors.red,
                        ),
                      ),
                      secondChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick2.value == true) {
                            controller.efeitoclick2.value = false;
                          } else {
                            controller.efeitoclick2.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 500,
                          color: Colors.blue,
                        ),
                      ),
                      crossFadeState: controller.efeitoclick2.value
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 500)),
                )),
            //3
            Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 50, top: 50),
                  child: AnimatedCrossFade(
                      firstChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick3.value == true) {
                            controller.efeitoclick3.value = false;
                          } else {
                            controller.efeitoclick3.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 100,
                          color: Colors.red,
                        ),
                      ),
                      secondChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick3.value == true) {
                            controller.efeitoclick3.value = false;
                          } else {
                            controller.efeitoclick3.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 500,
                          color: Colors.blue,
                        ),
                      ),
                      crossFadeState: controller.efeitoclick3.value
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 500)),
                )),
            //4
            Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 50, top: 50),
                  child: AnimatedCrossFade(
                      firstChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick4.value == true) {
                            controller.efeitoclick4.value = false;
                          } else {
                            controller.efeitoclick4.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 100,
                          color: Colors.red,
                        ),
                      ),
                      secondChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick4.value == true) {
                            controller.efeitoclick4.value = false;
                          } else {
                            controller.efeitoclick4.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 500,
                          color: Colors.blue,
                        ),
                      ),
                      crossFadeState: controller.efeitoclick4.value
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 500)),
                )),
            //
            Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 50, top: 50),
                  child: AnimatedCrossFade(
                      firstChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick5.value == true) {
                            controller.efeitoclick5.value = false;
                          } else {
                            controller.efeitoclick5.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 100,
                          color: Colors.red,
                        ),
                      ),
                      secondChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick5.value == true) {
                            controller.efeitoclick5.value = false;
                          } else {
                            controller.efeitoclick5.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 500,
                          color: Colors.blue,
                        ),
                      ),
                      crossFadeState: controller.efeitoclick5.value
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 500)),
                )),
            //6
            Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 50, top: 50),
                  child: AnimatedCrossFade(
                      firstChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick6.value == true) {
                            controller.efeitoclick6.value = false;
                          } else {
                            controller.efeitoclick6.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 100,
                          color: Colors.red,
                        ),
                      ),
                      secondChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick6.value == true) {
                            controller.efeitoclick6.value = false;
                          } else {
                            controller.efeitoclick6.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 500,
                          color: Colors.blue,
                        ),
                      ),
                      crossFadeState: controller.efeitoclick6.value
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 500)),
                )),
            //7
            Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 50, top: 50),
                  child: AnimatedCrossFade(
                      firstChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick7.value == true) {
                            controller.efeitoclick7.value = false;
                          } else {
                            controller.efeitoclick7.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 100,
                          color: Colors.red,
                        ),
                      ),
                      secondChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick7.value == true) {
                            controller.efeitoclick7.value = false;
                          } else {
                            controller.efeitoclick7.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 500,
                          color: Colors.blue,
                        ),
                      ),
                      crossFadeState: controller.efeitoclick7.value
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 500)),
                )),
            //8
            Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 50, top: 50),
                  child: AnimatedCrossFade(
                      firstChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick8.value == true) {
                            controller.efeitoclick8.value = false;
                          } else {
                            controller.efeitoclick8.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 100,
                          color: Colors.red,
                        ),
                      ),
                      secondChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick8.value == true) {
                            controller.efeitoclick8.value = false;
                          } else {
                            controller.efeitoclick8.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 500,
                          color: Colors.blue,
                        ),
                      ),
                      crossFadeState: controller.efeitoclick8.value
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 500)),
                )),
            //9
            Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 50, top: 50),
                  child: AnimatedCrossFade(
                      firstChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick9.value == true) {
                            controller.efeitoclick9.value = false;
                          } else {
                            controller.efeitoclick9.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 100,
                          color: Colors.red,
                        ),
                      ),
                      secondChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick9.value == true) {
                            controller.efeitoclick9.value = false;
                          } else {
                            controller.efeitoclick9.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 500,
                          color: Colors.blue,
                        ),
                      ),
                      crossFadeState: controller.efeitoclick9.value
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 500)),
                )),
            //10
            Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 50, top: 50),
                  child: AnimatedCrossFade(
                      firstChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick10.value == true) {
                            controller.efeitoclick10.value = false;
                          } else {
                            controller.efeitoclick10.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 100,
                          color: Colors.red,
                        ),
                      ),
                      secondChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick10.value == true) {
                            controller.efeitoclick10.value = false;
                          } else {
                            controller.efeitoclick10.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 500,
                          color: Colors.blue,
                        ),
                      ),
                      crossFadeState: controller.efeitoclick10.value
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 500)),
                )),
            //11
            Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 50, top: 50),
                  child: AnimatedCrossFade(
                      firstChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick11.value == true) {
                            controller.efeitoclick11.value = false;
                          } else {
                            controller.efeitoclick11.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 100,
                          color: Colors.red,
                        ),
                      ),
                      secondChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick11.value == true) {
                            controller.efeitoclick11.value = false;
                          } else {
                            controller.efeitoclick11.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 500,
                          color: Colors.blue,
                        ),
                      ),
                      crossFadeState: controller.efeitoclick11.value
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 500)),
                )),
            //12
            Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 50, top: 50),
                  child: AnimatedCrossFade(
                      firstChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick12.value == true) {
                            controller.efeitoclick12.value = false;
                          } else {
                            controller.efeitoclick12.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 100,
                          color: Colors.red,
                        ),
                      ),
                      secondChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick12.value == true) {
                            controller.efeitoclick12.value = false;
                          } else {
                            controller.efeitoclick12.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 500,
                          color: Colors.blue,
                        ),
                      ),
                      crossFadeState: controller.efeitoclick12.value
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 500)),
                )),
            //13
            Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 50, top: 50),
                  child: AnimatedCrossFade(
                      firstChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick13.value == true) {
                            controller.efeitoclick13.value = false;
                          } else {
                            controller.efeitoclick13.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 100,
                          color: Colors.red,
                        ),
                      ),
                      secondChild: GestureDetector(
                        onTap: () {
                          if (controller.efeitoclick13.value == true) {
                            controller.efeitoclick13.value = false;
                          } else {
                            controller.efeitoclick13.value = true;
                          }
                        },
                        child: Container(
                          width: 350,
                          height: 500,
                          color: Colors.blue,
                        ),
                      ),
                      crossFadeState: controller.efeitoclick13.value
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 500)),
                )),
          ],
        ),
      ),
    );

Bodye1<widget>(context) => Material(
      elevation: 8,
      child: Container(
        width: MediaQuery.of(context).size.width / 1,
        color: Color(0xff181c1b),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Text(
                    "Olá, como podemos",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 35)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Text("Te ajudar agora",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xff059f77), fontSize: 35))),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 30),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                    width: 250,
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: 'Informe o nome'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 30),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                    width: 250,
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: 'Informe o email'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 30),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                    width: 250,
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: 'Assunto'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 30),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                    height: 300,
                    width: MediaQuery.of(context).size.width / 2,
                    child: TextField(
                      maxLines: 120,
                      autofocus: true,
                      decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: 'Mensagem'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 20),
                  child: Container(
                      margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                      height: 50,
                      width: 280,
                      color: Colors.black12,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xff059f77)),
                        ),
                        onPressed: () => {},
                        child: const Text(
                          "ENVIAR MENSAGEM",
                        ),
                      )),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );

footerWB() => Container(
      decoration: BoxDecoration(
          color: Color(0xff181c1b), borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(left: 0.0, right: 0.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 50, 10),
                  child: Column(
                    children: [
                      Text(
                        "SOBRE NÓS                                              ",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          " É uma plataforma online focada no acesso ao\n crédito consignado privado que nasceu para que\n as pessoas possam realizar o que elas têm\n vontade.",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "REDE SOCIAIS",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      )),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(right: 50.0),
                        child: Text(
                          "Instagram",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          )),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(right: 55.0),
                        child: Text(
                          "Facebook",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        "Telefone",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          "+55 (62) 99247-4584",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "+55 (62) 4103-1248",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        )),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Instagram",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      )),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          "imagem 1",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          )),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text(
                          "imagem2",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                )
              ],
            ),
            SizedBox(
              height: 80,
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 150,
            ),
            SizedBox(
              width: 150,
            ),
            SizedBox(
              width: 150,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "TERMOS DE USO",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "POLITICA DE PRIVACIDADE",
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 40, 0, 0),
                  child: Text(
                    "COMPROMISSO MONEE",
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text(
                "O site www.monee.com.br pertence e é operado por Monee Serviços de Crédito Ltda. (”Monee”), uma sociedade limitada registrada sob o CNPJ 36.251.922/0001-19, com sede na Rodovia BR-153 Quadra 71A Lote 6E, Município de Aparecida de Goiânia, Estado de Goiás, CEP74911-410. A Monee não é uma ﬁnanceira: somos um correspondente bancário da BMP MONEY PLUS SOCIEDADE DE CRÉDITO DIRETOS.A. inscrita no CNPJ sob o nº 34.337.707/0001-00. A Monee não cobra quaisquer valores diretamente dos clientes. Somos remunerados apenas pelas instituições ﬁnanceiras parceiras. Caso você receba um e-mail ou seja contatado por alguém se fazendo passar pela e cobrando quaisquer taxas para fechar negócios em nossa plataforma, encerre o contato imediatamente pois você está sendo vítima de uma tentativa de fraude. As taxas de juros do produto de crédito privado consignado variam de 1,5%, mínimo, a 6,00%, máximo, ao mês. Período de quitação do empréstimo de 3 a 36 meses, podendo ser antecipado a qualquer momento. Exemplo – Empréstimo R\$5.000,00 para pagamento em 12 meses – Total de 12 parcelas de R\$527,16. Valor total a pagar igual a R\$6.325,92 com uma taxa de juros de 3,50% ao mês (51,11% a.a). A Monee tem total compromisso com simplicidade e transparência. Antes de contratar um produto de crédito privado consignado, será exibido de forma clara: a taxa de juros aplicada, tarifas cobradas, impostos (IOF) e o custo efetivo total (CET). Sabemos que não é fácil entender todos esses valores e em caso de dúvidas, estamos à disposição para esclarecê-los.",
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                )),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
