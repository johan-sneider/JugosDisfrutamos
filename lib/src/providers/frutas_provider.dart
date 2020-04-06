import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;


class FrutasProvider {
  final int  index;

  List<dynamic> opciones = [];

  FrutasProvider(this.index){

    cargarData();
  }
    
  Future<List<dynamic>> cargarData() async {

    final resp = await rootBundle.loadString('data/frutas_opt.json');
    
      Map dataMap = json.decode( resp );
      opciones = dataMap ['Papaya Manzana Piña'];


    return opciones; 
  }
}

final frutasProvider = new FrutasProvider(0);