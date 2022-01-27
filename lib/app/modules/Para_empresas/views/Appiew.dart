import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/ParaVoce/controllers/ParaVoce_controller.dart';
import 'package:get/get.dart';
import '../controllers/para_empresas_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class AppViewPE extends StatelessWidget {
  BuildContext context;
  ParaEmpresasController controller;

  AppViewPE(this.context, this.controller);

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
              print(DragUpdateDetails);
            },
            child: SingleChildScrollView(
                child: Material(
                    elevation: 15,
                    color: Color(0xff059f77),
                    child: Container(
                        width: size.width,
                        color: Colors.black26,
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 20),
                        child: Column(children: <Widget>[
                          appbar(),
                          bodyp1(),
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

  bodyp1() => Material(
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
                  Text(
                    "QUEM SOMOS",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 15)),
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
                  Text("Sobre a Monee",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xff059f77), fontSize: 25))),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                    "É uma plataforma online focada no acesso ao crédito consignado privado que nasceu para que as pessoas possam realizar o que elas têm vontade. Para nós, viabilizar o acesso ao crédito tem como base uma filosofia pautada em escutar, entender e criar junto com quem deposita confiança na gente. Afinal de contas, ter independência e controle sobre as próprias escolhas agora faz a vida andar pra frente",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(color: Color(0xff059f77), fontSize: 18))),
              ),
              SizedBox(
                height: 40,
              ),
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
                LimitedBox(
                    maxHeight: 100,
                    maxWidth: 100,
                    child: Image.asset(
                      "assets/image/arrow.png",
                      color: Color(0xff181c1b),
                    )),
                SizedBox(
                  height: 40,
                ),
                Text("Sobre a Monee",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(color: Color(0xff059f77), fontSize: 25))),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                      "Viabilizar o acesso ao crédito, e consequentemente, as realizacoes de vida das pessoas.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xff181c1b), fontSize: 18))),
                ),
                LimitedBox(
                    maxHeight: 100,
                    maxWidth: 100,
                    child: Image.asset(
                      "assets/image/gem.png",
                      color: Color(0xff181c1b),
                    )),
                SizedBox(
                  height: 40,
                ),
                Text("Valores",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(color: Color(0xff059f77), fontSize: 25))),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                      "Integridade, Ética, Comunicação aberta e honesta, Respeito, Humildade e Simplicidade.",
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
                      "assets/image/deveres.png",
                      color: Color(0xff181c1b),
                    )),
                SizedBox(
                  height: 40,
                ),
                Text("Deveres",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(color: Color(0xff059f77), fontSize: 25))),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                      "Integridade, Ética, Comunicação aberta e honesta, Respeito, Humildade e Simplicidade.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xff181c1b), fontSize: 18))),
                ),
                SizedBox(
                  height: 40,
                ),
                Material(
                  elevation: 8,
                  child: Container(
                      color: Color(0xff059f77),
                      width: MediaQuery.of(context).size.width / 1,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "NÃO SOMOS UM BANCO!",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 35, color: Colors.white)),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Nós somos uma fintech. Ou seja, um tipo de startup que vêm revolucionando o mercado financeiro no país ao oferecer acesso ao crédito. No nosso caso, viabilizamos empréstimos consignados privados para que as empresas possam oferecer aos seus colaboradores. Esse serviço conta com vantagens como agilidade, segurança e menores taxas. Queremos escutar você.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Quer bater um papo com a gente?",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Material(
                            elevation: 8,
                            child: Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "WhatsApp",
                                    style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                            color: Colors.white, fontSize: 18)),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          )
                        ],
                      )),
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
