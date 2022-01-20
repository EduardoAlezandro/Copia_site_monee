import 'package:flutter_application_1/app/modules/consiguinado_privado/controllers/consiguinado_privado_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/Quem_somos/controllers/quem_somos_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppviewCP extends StatelessWidget {
  BuildContext context;
  ConsiguinadoPrivadoController controller;

  AppviewCP(this.context, this.controller);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenwidth = 0;
    double screenheight = 0;
    final Duration duration = const Duration(milliseconds: 300);
    screenwidth = size.width;
    screenheight = size.height;

    return Obx(() => AnimatedPositioned(
        top: controller.menuclick.value ? 0 : 0.0 * screenheight,
        bottom: controller.menuclick.value ? 0 : 0.0 * screenwidth,
        left: controller.menuclick.value ? 0 : -0.4 * screenwidth,
        right: controller.menuclick.value ? 0 : 0.6 * screenwidth,
        duration: duration,
        child: GestureDetector(
            onHorizontalDragEnd: (DragEndDetails oi) {
              controller.menuclick.value = !controller.menuclick.value;
            },
            child: SingleChildScrollView(
                child: Material(
                    elevation: 15,
                    color: Color(0xff059f77),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black26,
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 20),
                        child: Column(children: <Widget>[
                          appbar(),
                          bodyp1(screenwidth, screenheight),
                          bodyp2(),
                          footerMB(),
                        ])))))));
  }

  appbar() => Container(
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
            InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  controller.menuclick.value = !controller.menuclick.value;
                }),
          ],
        ),
      );

  bodyp1(screenwidth, screenheight) => Material(
        elevation: 8,
        child: Container(
          width: screenwidth / 1,
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
                  Text(
                    "CONSIGUINADO PRIVADO",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                        "Empréstimo consignado privado com taxas competitivas.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Color(0xff059f77), fontSize: 25))),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                    "Experimente o poder de fazer o que você tem vontade agora. Por que não hoje? A melhor opção de empréstimo pessoal.",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 14))),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/image/logo2.png"),
                ],
              )
            ],
          ),
        ),
      );

  bodyp2() => Material(
        elevation: 8,
        child: Container(
            width: MediaQuery.of(context).size.width / 1,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text("O que é empréstimo",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(color: Color(0xff181c1b), fontSize: 20))),
                Wrap(children: [
                  Text("CONSIGNADO PRIVADO?",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xff059f77), fontSize: 25))),
                ]),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Wrap(
                    children: [
                      Text(
                          "Você já conhece o velho empréstimo consignado, certo? Pois o consignado privado é uma linha especial onde o valor contratado é descontado todos os meses do salário. Assim, o colaborador não precisa se preocupar com o pagamento das parcelas.",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Color(0xff181c1b), fontSize: 18))),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Wrap(
                    children: [
                      Text(
                          "Na Monee, queremos ajudar você a ter independência hoje. Por isso, oferecemos uma taxa de juros justa para que possa resolver seus problemas financeiros ou realizar seus sonhos agora. Como somos uma plataforma digital, tudo isso é feito de forma simples, transparente e rápida. Afinal de contas, a vida não para.",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Color(0xff181c1b), fontSize: 18))),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Material(
                  elevation: 8,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1,
                    color: Color(0xff059f77),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              color: Color(0xff059f77),
                              height: 170,
                              child: Image.asset(
                                "assets/image/bodyI.png",
                                color: Colors.white,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "O QUE O COLABORADOR PODE FAZER AGORA PARA TER ACESSO A ESSE TIPO DE CRÉDITO?",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      color: Colors.white, fontSize: 18))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "Precisa trabalhar para uma empresa privada que seja",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      color: Colors.white, fontSize: 15))),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Wrap(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Sua empresa já é parceira da monee?",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Color(0xff059f77), fontSize: 25))),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                      "Veja o que você precisa fazer para se cadastrar e ter acesso ao crédito:",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xff181c1b), fontSize: 18))),
                ),
                SizedBox(
                  height: 20,
                ),
                LimitedBox(
                    maxHeight: 100,
                    maxWidth: 100,
                    child: Image.asset(
                      "assets/image/1contato.png",
                      color: Color(0xff181c1b),
                    )),
                SizedBox(
                  height: 10,
                ),
                Text("Faça o seu cadastro",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(color: Color(0xff059f77), fontSize: 25))),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                      "É só escolher a opção Colaborador na opção Entre agora na home do site. Você vai precisar preencher alguns dados e enviar seus documentos pelo site mesmo.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xff181c1b), fontSize: 18))),
                ),
                SizedBox(
                  height: 40,
                ),
                LimitedBox(
                    maxHeight: 100,
                    maxWidth: 100,
                    child: Image.asset(
                      "assets/image/4liberacao.png",
                      color: Color(0xff181c1b),
                    )),
                SizedBox(
                  height: 10,
                ),
                Text("Aguarde a Análise Financeira",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(color: Color(0xff059f77), fontSize: 25))),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                      "Não demora nada, viu? Serve para sabermos se o crédito que você precisa está de acordo com o seu perfil.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xff181c1b), fontSize: 18))),
                ),
                SizedBox(
                  height: 40,
                ),
                LimitedBox(
                    maxHeight: 100,
                    maxWidth: 100,
                    child: Image.asset(
                      "assets/image/3pedido.png",
                      color: Color(0xff181c1b),
                    )),
                SizedBox(
                  height: 10,
                ),
                Text("Hora do dinheiro cair na conta",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(color: Color(0xff059f77), fontSize: 25))),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                      "Depois da análise e da aprovação, a Monee libera o crédito na sua conta em 24 horas. Rápido e fácil. Porque a vida não espera.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xff181c1b), fontSize: 18))),
                ),
              ],
            )),
      );

  footerMB() => Container(
        color: Color(0xff181c1b),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Wrap(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 0, 10),
                child: Text(
                  "SOBRE NÓS",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10),
                child: Text(
                  "É uma plataforma online focada no acesso ao crédito consignado privado que nasceu para que as pessoas possam realizar o que elas têm vontade.",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  )),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "REDE SOCIAIS",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                )),
              ),
              SizedBox(
                width: 150,
              ),
              TextButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Instagram",
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
                child: Text(
                  "Facebook",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  )),
                ),
              ),
              SizedBox(
                width: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
                child: Text(
                  "COMPROMISSO MONEE",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 5),
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
                height: 200,
              ),
            ],
          ),
        ),
      );
}
