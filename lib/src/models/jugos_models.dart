class Cast {
  List<JugosModel> frutas = new List();

  Cast.fromJsonList(List<dynamic> jsonList){
    if( jsonList == null ) return;

    jsonList.forEach((item){
      final fruta = JugosModel.fromJson(item);
      frutas.add(fruta);
    });
  }
}

class JugosModel {
    String titulo;
    String descripcion;
    String imagenEncabezado;
    String imagenDescripcion;

    JugosModel({
        this.titulo,
        this.descripcion,
        this.imagenEncabezado,
        this.imagenDescripcion,
    });

    factory JugosModel.fromJson(Map<String, dynamic> json) => JugosModel(
        titulo: json["Titulo"],
        descripcion: json["Descripcion"],
        imagenEncabezado: json["ImagenEncabezado"],
        imagenDescripcion: json["ImagenDescripcion"],
    );

    Map<String, dynamic> toJson() => {
        "Titulo": titulo,
        "Descripcion": descripcion,
        "ImagenEncabezado": imagenEncabezado,
        "ImagenDescripcion": imagenDescripcion,
    };
}
