import 'package:flutter/material.dart';
// import 'package:jugos_disfrutamos/src/pages/circulacion_page.dart';
// import 'package:jugos_disfrutamos/src/pages/jugo_detalle_page.dart';
// import 'package:jugos_disfrutamos/src/pages/revitalizate_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Jugos Disfrutamos'),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(Icons.settings, color: Colors.white,),
      //       onPressed: null
      //     )
      //   ],
      // ),
      body: CustomScrollView(
        slivers: <Widget>[
          _crearAppBar(),
          
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Divider(),
                _crearContainer( 'Mejora tu circulacion', 'assets/img/Frutos_Rojos3.jpg', Colors.white, Color.fromRGBO(255, 0, 0, 80), context, 'circulacion' ),
                // Divider(),
                _crearContainer( 'Revitalizate y mejora tu piel', 'assets/img/kitchen-4942492_1920.jpg', Colors.black, Color.fromRGBO(255, 255, 0, 80), context, 'revitalizate'),
                // Divider(),
                _crearContainer('Desintoxica tu cuerpo', 'assets/img/Jugos_Verdes2.jpg', Colors.white, Color.fromRGBO(0, 143, 57, 80), context, 'desintoxicate'),
                // Divider(),
                _crearContainer('Rejuvencete', 'assets/img/Frutos_Morados2.jpg', Colors.white, Color.fromRGBO(87, 35, 100, 80), context, 'rejuvenece'),
                // // Divider(),
                _crearContainer('Activa tu sistema Inmunologico', 'assets/img/Alimentos_Blancos.jpeg', Colors.black, Color.fromRGBO(255, 255, 255, 80), context, 'inmunologico'),
                // Divider(),
              ]
            )
          )
        ],

      )
    );
  }
  Widget _crearContainer(String texto, String textoImg, Color color, Color color2, BuildContext context,  routes){
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, routes);
      },
      child: Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                image:
                 
                DecorationImage( fit: BoxFit.cover, image: AssetImage(textoImg))
              ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 70),
                  decoration: BoxDecoration(
                    color: color2,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  // color: Colors.white,
                  child: Center(
                    child: Text(texto, style: TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                    )
                  ),
                ),
              
            ),
    );
  }
  Widget _crearAppBar(){
    return SliverAppBar( 
      elevation: 2.0,
      backgroundColor: Colors.purple,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          'Jugos Disfrutamos',
          style: TextStyle(color: Colors.white, fontSize: 22.0, fontFamily: 'Insani'),
        ),
        background: FadeInImage(
          image: AssetImage('assets/img/LogoContorno.png'),
          placeholder: AssetImage('assets/img/loading.gif'),
          fadeInDuration: Duration(milliseconds: 150),
          fit: BoxFit.cover,
        ),
        
      ),

    );
  }
}