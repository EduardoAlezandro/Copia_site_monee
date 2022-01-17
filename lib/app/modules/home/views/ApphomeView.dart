import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

import 'package:google_fonts/google_fonts.dart';

class AppView extends StatelessWidget {
  BuildContext context;
  HomeController controller;

  AppView(
    this.context,
    this.controller,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenwidth = 0;
    double screenheight = 0;
    final Duration duration = const Duration(milliseconds: 300);
    screenwidth = size.width;
    screenheight = size.height;

    return

        //APPBAR INICIO ******************************************************************
        Obx(() => AnimatedPositioned(
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
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black26,
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 20),
                        child: Column(children: <Widget>[
                          Container(
                            color: Color(0xff181c1b),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      child: LimitedBox(
                                          maxWidth: 75,
                                          maxHeight: 75,
                                          child: Image.asset(
                                              "assets/image/logo.png")),
                                    )),
                                InkWell(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Icon(
                                        Icons.menu,
                                        color: Colors.white,
                                      ),
                                    ),
                                    onTap: () {
                                      controller.menuclick.value =
                                          !controller.menuclick.value;
                                    }),
                              ],
                            ),
                          ),
                          // APP BAR FINAL *******************************************************
                          SizedBox(
                            height: 10,
                          ),
                          // PAGE VIEW INICIO *******************************************************
                          Container(
                            color: Color(0xff181c1b),
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            child: PageView(
                              controller: PageController(viewportFraction: 0.8),
                              scrollDirection: Axis.horizontal,
                              pageSnapping: true,
                              children: <Widget>[
                                Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.black26,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    width: 190,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "CRÉDITO PARA REALIZAR UM SONHO OU RESOLVE UM PROBLEMA?",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.montserrat(
                                              textStyle: const TextStyle(
                                            color: Color(0xff059f77),
                                            fontSize: 15,
                                          )),
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Text(
                                          "Por que não agora?",
                                          style: GoogleFonts.montserrat(
                                              textStyle: const TextStyle(
                                                  color: Color(0xff059f77),
                                                  fontSize: 12)),
                                        ),
                                        Text(
                                          "#PORQUEAVIDANAOPODEESPERAR",
                                          style: GoogleFonts.montserrat(
                                              textStyle: const TextStyle(
                                                  color: Color(0xff059f77),
                                                  fontSize: 12)),
                                        ),
                                      ],
                                    )),
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xff181c1b),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  width: 100,
                                ),
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xff181c1b),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  width: 100,
                                )
                              ],
                            ),
                          ),
                          // PAGE VIEW FINAL *******************************************************
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            color: Color(0xff059f77),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 60),
                                  child: Text(
                                    "          Crédito Consignado \n          Privado",
                                    style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                            color: Colors.white, fontSize: 19)),
                                  ),
                                ),
                                Text(
                                  "          A Melhor opção agora!",
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                          color: Colors.white, fontSize: 19)),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Wrap(
                                        children: [
                                          SizedBox(
                                            width: 25,
                                          ),
                                          Text(
                                            "6 Meses",
                                            textAlign: TextAlign.justify,
                                            style: GoogleFonts.montserrat(
                                                textStyle: const TextStyle(
                                              color: Color(0xff181b1c),
                                              fontSize: 12,
                                            )),
                                          ),
                                          SizedBox(
                                            width: 190,
                                          ),
                                          Text(
                                            "36 Meses            ",
                                            textAlign: TextAlign.justify,
                                            style: GoogleFonts.montserrat(
                                                textStyle: const TextStyle(
                                              color: Color(0xff181b1c),
                                              fontSize: 12,
                                            )),
                                          ),
                                          Obx(() => Slider(
                                                thumbColor:
                                                    const Color(0xff059f77),
                                                activeColor:
                                                    const Color(0xff059f77),
                                                value: controller.rating.value,
                                                divisions: 36,
                                                min: 6,
                                                max: 36,
                                                label:
                                                    "${controller.rating.value}",
                                                onChanged: (double value) {
                                                  controller.rating.value =
                                                      value;
                                                },
                                              )),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "R\$1.000 ",
                                            textAlign: TextAlign.justify,
                                            style: GoogleFonts.montserrat(
                                                textStyle: const TextStyle(
                                              color: Color(0xff181b1c),
                                              fontSize: 12,
                                            )),
                                          ),
                                          SizedBox(
                                            width: 190,
                                          ),
                                          Text(
                                            "R\$50.000",
                                            textAlign: TextAlign.justify,
                                            style: GoogleFonts.montserrat(
                                                textStyle: const TextStyle(
                                              color: Color(0xff181b1c),
                                              fontSize: 12,
                                            )),
                                          ),
                                          Obx(() => Slider(
                                                thumbColor:
                                                    const Color(0xff059f77),
                                                activeColor:
                                                    const Color(0xff059f77),
                                                value: controller.rating2.value,
                                                divisions: 50,
                                                max: 50,
                                                min: 0,
                                                label:
                                                    "\$${controller.rating2.value.toStringAsFixed(3)}",
                                                onChanged: (double value2) {
                                                  controller.rating2.value =
                                                      value2;
                                                },
                                              )),
                                          SizedBox(
                                            width: 135,
                                          ),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty
                                                        .all<Color>(const Color(
                                                            0xff059f77))),
                                            onPressed: () => {},
                                            child: const Text("Simular"),
                                          ),
                                          SizedBox(
                                            height: 75,
                                          ),
                                          Divider(
                                            thickness: 2,
                                          ),
                                          SizedBox(
                                            height: 35,
                                          ),
                                          SizedBox(
                                            width: 75,
                                          ),
                                          Container(
                                            color: Colors.white,
                                            child: Column(
                                              children: [
                                                LimitedBox(
                                                    maxHeight: 75,
                                                    maxWidth: 75,
                                                    child: Image.asset(
                                                        "assets/image/competitivas.png")),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                      "TAXAS COMPETITIVAS",
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              textStyle:
                                                                  const TextStyle(
                                                        color:
                                                            Color(0xff059f77),
                                                        fontSize: 16,
                                                      ))),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 10),
                                                  child: Text(
                                                      "Oferecemos taxas menores\nque as do empréstino\npessoal, cheque especial e \n cartão de crédito",
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              textStyle:
                                                                  const TextStyle(
                                                        color:
                                                            Color(0xff181c1b),
                                                        fontSize: 12,
                                                      ))),
                                                ),
                                                Container(
                                                  color: Colors.white,
                                                  child: Column(
                                                    children: [
                                                      LimitedBox(
                                                          maxHeight: 75,
                                                          maxWidth: 75,
                                                          child: Image.asset(
                                                              "assets/image/contas.png")),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Text(
                                                            "CONTAS EM DIA",
                                                            style: GoogleFonts
                                                                .montserrat(
                                                                    textStyle:
                                                                        const TextStyle(
                                                              color: Color(
                                                                  0xff059f77),
                                                              fontSize: 16,
                                                            ))),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                bottom: 8.0),
                                                        child: Text(
                                                            "Você não prescisa se \n preocupar com mais um \n boleto para pagar já que as \n parcelas são descontadas da \n folha de pagamento",
                                                            style: GoogleFonts
                                                                .montserrat(
                                                                    textStyle:
                                                                        const TextStyle(
                                                              color: Color(
                                                                  0xff181c1b),
                                                              fontSize: 12,
                                                            ))),
                                                      ),
                                                      Container(
                                                        color: Colors.white,
                                                        child: Column(
                                                          children: [
                                                            LimitedBox(
                                                                maxHeight: 75,
                                                                maxWidth: 75,
                                                                child: Image.asset(
                                                                    "assets/image/negativo.png")),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .fromLTRB(
                                                                      8,
                                                                      12,
                                                                      8,
                                                                      8),
                                                              child: Text(
                                                                  "ESTÁ NEGATIVADO?",
                                                                  style: GoogleFonts
                                                                      .montserrat(
                                                                          textStyle:
                                                                              const TextStyle(
                                                                    color: Color(
                                                                        0xff059f77),
                                                                    fontSize:
                                                                        16,
                                                                  ))),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .all(
                                                                      10.0),
                                                              child: Text(
                                                                  "Sem problemas. O desconto\n em folha também facilita o\n crédito pra sua vida",
                                                                  style: GoogleFonts
                                                                      .montserrat(
                                                                          textStyle:
                                                                              const TextStyle(
                                                                    color: Color(
                                                                        0xff181c1b),
                                                                    fontSize:
                                                                        12,
                                                                  ))),
                                                            ),
                                                            SizedBox(
                                                              height: 50,
                                                            ),
                                                            Text(
                                                                "COMO FUNCIONA?",
                                                                style: GoogleFonts.montserrat(
                                                                    textStyle: const TextStyle(
                                                                        color: Color(
                                                                            0xff181c1b),
                                                                        fontSize:
                                                                            16))),
                                                            SizedBox(
                                                              height: 50,
                                                            ),
                                                            LimitedBox(
                                                                maxHeight: 75,
                                                                maxWidth: 75,
                                                                child: Image.asset(
                                                                    "assets/image/1contato.png")),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .fromLTRB(
                                                                      8,
                                                                      12,
                                                                      8,
                                                                      8),
                                                              child: Text(
                                                                  "1. CONTATO",
                                                                  style: GoogleFonts
                                                                      .montserrat(
                                                                          textStyle:
                                                                              const TextStyle(
                                                                    color: Color(
                                                                        0xff181c1b),
                                                                    fontSize:
                                                                        16,
                                                                  ))),
                                                            ),
                                                            Text(
                                                                "Indique sua empresa e\n dê o primeiro passo\n para realizar o que \n você tem vontade",
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: GoogleFonts
                                                                    .montserrat(
                                                                        textStyle:
                                                                            const TextStyle(
                                                                  color: Color(
                                                                      0xff181c1b),
                                                                  fontSize: 12,
                                                                ))),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .fromLTRB(
                                                                      8,
                                                                      40,
                                                                      8,
                                                                      8),
                                                              child: LimitedBox(
                                                                  maxHeight: 75,
                                                                  maxWidth: 75,
                                                                  child: Image
                                                                      .asset(
                                                                          "assets/image/2parceria.png")),
                                                            ),
                                                            Text("2 PARCERIA",
                                                                style: GoogleFonts
                                                                    .montserrat(
                                                                        textStyle:
                                                                            const TextStyle(
                                                                  color: Color(
                                                                      0xff181c1b),
                                                                  fontSize: 16,
                                                                ))),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .fromLTRB(
                                                                8,
                                                                8,
                                                                12,
                                                                0,
                                                              ),
                                                              child: Text(
                                                                  "A Monee e o RH da sua\n empresa se unem \npara que você possa\n ter acesso ao\n empréstimo com\n a melhor taxa do\n mercado.",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: GoogleFonts
                                                                      .montserrat(
                                                                          textStyle:
                                                                              const TextStyle(
                                                                    color: Color(
                                                                        0xff181c1b),
                                                                    fontSize:
                                                                        12,
                                                                  ))),
                                                            ),
                                                            SizedBox(
                                                              height: 50,
                                                            ),
                                                            LimitedBox(
                                                                maxHeight: 75,
                                                                maxWidth: 75,
                                                                child: Image.asset(
                                                                    "assets/image/3pedido.png")),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .fromLTRB(
                                                                      8,
                                                                      12,
                                                                      8,
                                                                      8),
                                                              child: Text(
                                                                  "3 PEDIDO",
                                                                  style: GoogleFonts
                                                                      .montserrat(
                                                                          textStyle:
                                                                              const TextStyle(
                                                                    color: Color(
                                                                        0xff181c1b),
                                                                    fontSize:
                                                                        16,
                                                                  ))),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .fromLTRB(
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      5),
                                                              child: Text(
                                                                  "Agora é só fazer o\n pedido do crédito\n desejado na nossa \nplataforma online.",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: GoogleFonts
                                                                      .montserrat(
                                                                          textStyle:
                                                                              const TextStyle(
                                                                    color: Color(
                                                                        0xff181c1b),
                                                                    fontSize:
                                                                        12,
                                                                  ))),
                                                            ),
                                                            SizedBox(
                                                              height: 50,
                                                            ),
                                                            LimitedBox(
                                                                maxHeight: 75,
                                                                maxWidth: 75,
                                                                child: Image.asset(
                                                                    "assets/image/4liberaçao.png")),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .fromLTRB(
                                                                      8,
                                                                      12,
                                                                      8,
                                                                      8),
                                                              child: Text(
                                                                  "4 LIBERAÇÃO",
                                                                  style: GoogleFonts
                                                                      .montserrat(
                                                                          textStyle:
                                                                              const TextStyle(
                                                                    color: Color(
                                                                        0xff181c1b),
                                                                    fontSize:
                                                                        16,
                                                                  ))),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 12),
                                                              child: Text(
                                                                  "Após 24 horas da liberação\n do empréstimo, o dinheiro\n estará na sua conta e você \ncom mais liberdade em\n suas mãos.",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: GoogleFonts
                                                                      .montserrat(
                                                                          textStyle:
                                                                              const TextStyle(
                                                                    color: Color(
                                                                        0xff181c1b),
                                                                    fontSize:
                                                                        12,
                                                                  ))),
                                                            ),
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            Container(
                                                              height: 50,
                                                              width: 220,
                                                              color: Colors
                                                                  .black12,
                                                              child:
                                                                  ElevatedButton(
                                                                style:
                                                                    ButtonStyle(
                                                                  backgroundColor: MaterialStateProperty.all<
                                                                          Color>(
                                                                      const Color(
                                                                          0xff059f77)),
                                                                ),
                                                                onPressed: () =>
                                                                    {},
                                                                child:
                                                                    const Text(
                                                                  "INDIQUE SUA EMPRESA AGORA",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  color: Color(0xff181c1b),
                                  child: Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 30, 0, 10),
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
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: Text(
                                          " É uma plataforma online focada no acesso ao\n crédito consignado privado que nasceu para que\n as pessoas possam realizar o que elas têm\n vontade.",
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
                                      Text(
                                        "Telefone",
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
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 40, 0, 0),
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
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 10, 0, 0),
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
                                )
                              ],
                            ),
                          ),
                        ]))),
              ),
            )));
  }
}
