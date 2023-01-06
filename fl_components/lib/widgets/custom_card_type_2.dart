import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2({super.key, required this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      //Nos sirve para recortar, por ejemplo para que respete el
      //borde redondeado del Card
      clipBehavior: Clip.antiAlias,
      //Redondear bordes
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 30,
      //Color de la sombra y ponerle transparencia con el withOpacity(0.4)
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          /*
          //Imagen normal, problema que a veces dura mucho en aparecer
          //dependiendo del tamaño del aimgen y conección de internet
          Image(
              image: NetworkImage(
                  'http://www.solofondos.com/wp-content/uploads/2015/04/Fondos-de-paisajes.jpg')),
          */
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            //Hacer que la imagen de adapte a lo otro
            fit: BoxFit.cover,
            //Hcer que la imagen aparezca mas rapido o lento, segun numero que le demos
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(
                    name!)) //El signo ! es para que no marque error proque puede venir nulo pero ya se esta evaluando en if enotnces no hay problema
        ],
      ),
    );
  }
}
