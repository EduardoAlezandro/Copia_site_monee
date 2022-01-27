import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/Para_empresas/views/Appiew.dart';
import 'package:flutter_application_1/app/modules/Para_empresas/views/WebViewPe.dart';
import 'package:get/get.dart';
import '../controllers/para_empresas_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class ParaEmpresasView extends GetView<ParaEmpresasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
        LayoutBuilder(builder: (BuildContext, BoxConstraints constraints) {
      if (constraints.maxWidth >= 1160) {
        return WebViewPe(context, controller);
      } else {
        return Stack(children: [
          _menu(context, controller),
          AppViewPE(context, controller)
        ]);
      }
    }));
  }

  Widget _menu(context, controller) {
    return Container(
      color: Color(0Xff181c1b),
      child: GestureDetector(
        onVerticalDragEnd: (DragEndDetails oi) {
          controller.menuclick.value = !controller.menuclick.value;
          print(DragUpdateDetails);
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Get.toNamed('/quem-somos');
                  },
                  child: Text(
                    "Quem somos",
                    style: GoogleFonts.montserrat(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed('/consiguinado-privado');
                  },
                  child: Text(
                    "Consiguinado Privado",
                    style: GoogleFonts.montserrat(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed('/para-voce');
                  },
                  child: Text(
                    "Para você",
                    style: GoogleFonts.montserrat(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed('/para-empresas');
                  },
                  child: Text(
                    "Para empresa",
                    style: GoogleFonts.montserrat(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed('/blog');
                  },
                  child: Text(
                    "Blog",
                    style: GoogleFonts.montserrat(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Ajuda",
                    style: GoogleFonts.montserrat(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Quem ajuda",
                    style: GoogleFonts.montserrat(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
