// ignore_for_file: prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

import 'package:google_fonts/google_fonts.dart';

class WebView extends StatefulWidget {
  BuildContext context;
  HomeController controller;

  WebView(this.context, this.controller, {Key? key}) : super(key: key);

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: const Color(0XFF181c1b),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.all(8),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: LimitedBox(
                          maxWidth: 75,
                          maxHeight: 75,
                          child: Image.asset("assets/image/logo.png")),
                    )),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Quem somos",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.white, fontSize: 12)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Consiginado Privado",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.white, fontSize: 12)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Para você",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.white, fontSize: 12)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Para empresas",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.white, fontSize: 12)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        child: Text(
                          "Blog",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.white, fontSize: 12)),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        child: Text(
                          "Ajuda",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.white, fontSize: 12)),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 1)),
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
                )
              ],
            ),
            // 2 Container
          ),
          Container(
              color: const Color(0xff181b1c),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset("assets/image/logo2.png"),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Text(
                          "CRÉDITO PARA REALIZAR UM SONHO OU RESOLVER \n                                    UM PROBLEMA?",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Color(0xff059f77), fontSize: 35)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      "Por que não agora?",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Color(0xff059f77), fontSize: 15)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "#PORQUEAVIDANAOPODEESPERAR",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Color(0xff059f77), fontSize: 13)),
                    ),
                  ),
                ],
              )),
          // 3 container
          Row(
            children: [
              Container(
                color: const Color(0xff059f77),
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 6,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: MediaQuery.of(context).size.height / 3,
                color: const Color(0xff059f77),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LimitedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "          Crédito Consignado \n          Privado",
                                        style: GoogleFonts.montserrat(
                                            textStyle: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 19)),
                                      ),
                                      Text(
                                        "              A Melhor opção agora!",
                                        style: GoogleFonts.montserrat(
                                            textStyle: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 19)),
                                      )
                                    ],
                                  ),
                                ),
                              ]),
                          Padding(
                            padding: const EdgeInsets.only(right: 80),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Simule Agora!",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.montserrat(
                                            textStyle: const TextStyle(
                                          color: Color(0xff059f77),
                                          fontSize: 18,
                                        )),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "6 Meses                   ",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.montserrat(
                                            textStyle: const TextStyle(
                                          color: Color(0xff181b1c),
                                          fontSize: 12,
                                        )),
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
                                      Text(
                                        "R\$1.000 ",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.montserrat(
                                            textStyle: const TextStyle(
                                          color: Color(0xff181b1c),
                                          fontSize: 12,
                                        )),
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
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Obx(() => Slider(
                                            thumbColor: const Color(0xff059f77),
                                            activeColor:
                                                const Color(0xff059f77),
                                            value: widget.controller.rating.value,
                                            divisions: 36,
                                            min: 6,
                                            max: 36,
                                            label: "${widget.controller.rating.value}",
                                            onChanged: (double value) {
                                              widget.controller.rating.value = value;
                                            },
                                          )),
                                      Obx(() => Slider(
                                            thumbColor: const Color(0xff059f77),
                                            activeColor:
                                                const Color(0xff059f77),
                                            value: widget.controller.rating2.value,
                                            divisions: 50,
                                            max: 50,
                                            label:
                                                "\$${widget.controller.rating2.value.toStringAsFixed(3)}",
                                            onChanged: (double value2) {
                                              widget.controller.rating2.value = value2;
                                            },
                                          )),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Row(
                                      children: [
                                        ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                          Color>(
                                                      const Color(0xff059f77))),
                                          onPressed: () => {},
                                          child: const Text("Simular"),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color(0xff059f77),
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 6,
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        LimitedBox(
                            maxHeight: 75,
                            maxWidth: 75,
                            child:
                                Image.asset("assets/image/competitivas.png")),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("TAXAS COMPETITIVAS",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                color: Color(0xff059f77),
                                fontSize: 16,
                              ))),
                        ),
                        Text(
                            "Oferecemos taxas menores\nque as do empréstino\npessoal, cheque especial e \n cartão de crédito",
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                              color: Color(0xff181c1b),
                              fontSize: 12,
                            ))),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        LimitedBox(
                            maxHeight: 75,
                            maxWidth: 75,
                            child: Image.asset("assets/image/contas.png")),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("CONTAS EM DIA",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                color: Color(0xff059f77),
                                fontSize: 16,
                              ))),
                        ),
                        Text(
                            "Você não prescisa se \n preocupar com mais um \n boleto para pagar já que as \n parcelas são descontadas da \n folha de pagamento",
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                              color: Color(0xff181c1b),
                              fontSize: 12,
                            ))),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        LimitedBox(
                            maxHeight: 75,
                            maxWidth: 75,
                            child: Image.asset("assets/image/negativo.png")),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 12, 8, 8),
                          child: Text("ESTÁ NEGATIVADO?",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                color: Color(0xff059f77),
                                fontSize: 16,
                              ))),
                        ),
                        Text(
                            "Sem problemas. O desconto\n em folha também facilita o\n crédito pra sua vida",
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                              color: Color(0xff181c1b),
                              fontSize: 12,
                            ))),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("COMO FUNCIONA?",
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Color(0xff181c1b), fontSize: 16))),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            LimitedBox(
                                maxHeight: 75,
                                maxWidth: 75,
                                child:
                                    Image.asset("assets/image/1contato.png")),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 12, 8, 8),
                              child: Text("1. CONTATO",
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                    color: Color(0xff181c1b),
                                    fontSize: 16,
                                  ))),
                            ),
                            Text(
                                "Indique sua empresa e\n dê o primeiro passo\n para realizar o que \n você tem vontade",
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                  color: Color(0xff181c1b),
                                  fontSize: 12,
                                ))),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 40, 8, 8),
                              child: LimitedBox(
                                  maxHeight: 75,
                                  maxWidth: 75,
                                  child: Image.asset(
                                      "assets/image/2parceria.png")),
                            ),
                            Text("2 PARCERIA",
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                  color: Color(0xff181c1b),
                                  fontSize: 16,
                                ))),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                8,
                                8,
                                12,
                                0,
                              ),
                              child: Text(
                                  "A Monee e o RH da sua\n empresa se unem \npara que você possa\n ter acesso ao\n empréstimo com\n a melhor taxa do\n mercado.",
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                    color: Color(0xff181c1b),
                                    fontSize: 12,
                                  ))),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            LimitedBox(
                                maxHeight: 75,
                                maxWidth: 75,
                                child: Image.asset("assets/image/3pedido.png")),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 12, 8, 8),
                              child: Text("3 PEDIDO",
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                    color: Color(0xff181c1b),
                                    fontSize: 16,
                                  ))),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                              child: Text(
                                  "Agora é só fazer o\n pedido do crédito\n desejado na nossa \nplataforma online.",
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                    color: Color(0xff181c1b),
                                    fontSize: 12,
                                  ))),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            LimitedBox(
                                maxHeight: 75,
                                maxWidth: 75,
                                child:
                                    Image.asset("assets/image/4liberaçao.png")),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 12, 8, 8),
                              child: Text("4 LIBERAÇÃO",
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                    color: Color(0xff181c1b),
                                    fontSize: 16,
                                  ))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                  "Após 24 horas da liberação\n do empréstimo, o dinheiro\n estará na sua conta e você \ncom mais liberdade em\n suas mãos.",
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                    color: Color(0xff181c1b),
                                    fontSize: 12,
                                  ))),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 40),
            child: Container(
              height: 50,
              width: 280,
              color: Colors.black12,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xff059f77)),
                ),
                onPressed: () => {},
                child: const Text(
                  "INDIQUE SUA EMPRESA AGORA",
                ),
              ),
            ),
          ),

          Row(
            children: [
              Container(
                color: Color(0xff181b1c),
                height: MediaQuery.of(context).size.height / 1.3,
                width: MediaQuery.of(context).size.width / 4,
              ),
              Container(
                color: Color(0xff181b1c),
                height: MediaQuery.of(context).size.height / 1.3,
                width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "SOBRE NÓS",
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            )),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          " É uma plataforma online focada no acesso ao\n crédito consignado privado que nasceu para que\n as pessoas possam realizar o que elas têm\n vontade.",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          )),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "  REDE SOCIAIS",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              )),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                " Instagram",
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
                                " Facebook",
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                )),
                              ),
                            ),
                            Text(
                              "  Telefone",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              )),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "+55 (62) 99247-4584",
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
                                "+55 (62) 4103-1248",
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                )),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          " TERMOS DE USO",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          " POLITICA DE PRIVACIDADE",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,)),),
                      ),),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Text(
                        "COMPROMISSO MONEE",
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        "O site www.monee.com.br pertence e é operado por Monee Serviços de Crédito Ltda. (”Monee”), uma sociedade limitada registrada sob o CNPJ 36.251.922/0001-19, com sede na Rodovia BR-153 Quadra 71A Lote 6E, Município de Aparecida de Goiânia, Estado de Goiás, CEP74911-410. A Monee não é uma ﬁnanceira: somos um correspondente bancário da BMP MONEY PLUS SOCIEDADE DE CRÉDITO DIRETOS.A. inscrita no CNPJ sob o nº 34.337.707/0001-00. A Monee não cobra quaisquer valores diretamente dos clientes. Somos remunerados apenas pelas instituições ﬁnanceiras parceiras. Caso você receba um e-mail ou seja contatado por alguém se fazendo passar pela e cobrando quaisquer taxas para fechar negócios em nossa plataforma, encerre o contato imediatamente pois você está sendo vítima de uma tentativa de fraude. As taxas de juros do produto de crédito privado consignado variam de 1,5%, mínimo, a 6,00%, máximo, ao mês. Período de quitação do empréstimo de 3 a 36 meses, podendo ser antecipado a qualquer momento. Exemplo – Empréstimo R\$5.000,00 para pagamento em 12 meses – Total de 12 parcelas de R\$527,16. Valor total a pagar igual a R\$6.325,92 com uma taxa de juros de 3,50% ao mês (51,11% a.a). A Monee tem total compromisso com simplicidade e transparência. Antes de contratar um produto de crédito privado consignado, será exibido de forma clara: a taxa de juros aplicada, tarifas cobradas, impostos (IOF) e o custo efetivo total (CET). Sabemos que não é fácil entender todos esses valores e em caso de dúvidas, estamos à disposição para esclarecê-los.",
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        )),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: const Color(0xff181c1b),
                height: MediaQuery.of(context).size.height / 1.3,
                width: MediaQuery.of(context).size.width / 4,
              )
            ],
          )
        ]),
      ),
    );
  }
}
