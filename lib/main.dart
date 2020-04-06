import 'package:flutter/material.dart';

import 'package:jugos_disfrutamos/src/pages/home_page.dart';
import 'package:jugos_disfrutamos/src/pages/circulacion_page.dart';
import 'package:jugos_disfrutamos/src/pages/revitalizate_page.dart';
import 'package:jugos_disfrutamos/src/pages/desintoxicate_page.dart';
import 'package:jugos_disfrutamos/src/pages/rejuvence_page.dart';
import 'package:jugos_disfrutamos/src/pages/Inmunologico_page.dart';

import 'package:jugos_disfrutamos/src/pages/jugo_detalle_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jugos Disfrutamos',
      initialRoute: 'homepage',
      routes: {
        
        'homepage'       : (BuildContext context) => HomePage(),
        'circulacion'       : (BuildContext context) => CirculacionPage(),
        'revitalizate'       : (BuildContext context) => RevitalizatePage(),
        'desintoxicate'       : (BuildContext context) => DesitoxicatePage(),
        'rejuvenece'       : (BuildContext context) => RejuvecePage(),
        'inmunologico'       : (BuildContext context) => InmunologicoPage(),
        'detalle'        : (BuildContext context) => JugosDetalle(frutaa: 'Fruta', frutaImagen: 'FrutaImagan', titulo: 'Titulo',),
      },
      
    );
    
  }
}

// 