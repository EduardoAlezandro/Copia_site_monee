import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/ParaVoce/views/WebviewPV.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'AppviewPV.dart';
import '../controllers/ParaVoce_controller.dart';
import 'WebviewPV.dart';

class ParaVoceView extends GetView<ParaVoceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
        LayoutBuilder(builder: (BuildContext, BoxConstraints constraints) {
      if (constraints.maxWidth >= 1160) {
        return WebViewPv(context, controller);
      } else {
        return Stack(children: [
          _menu(context, controller),
          AppviewPV(context, controller)
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
                  onPressed: () {},
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
                  onPressed: () {},
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
