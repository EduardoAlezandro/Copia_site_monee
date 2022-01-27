import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/Ajuda/controllers/ajuda_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppViewAjuda extends StatelessWidget {
  BuildContext context;
  AjudaController controller;

  AppViewAjuda(this.context, this.controller);

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
                          whitebox(context),
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

  whitebox(context) => Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        color: Colors.white,
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
