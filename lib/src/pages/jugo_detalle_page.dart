
import 'package:flutter/material.dart';
import 'package:jugos_disfrutamos/src/pages/revitalizate_page.dart';


class JugosDetalle extends StatefulWidget {

  
  final String frutaa ;
  final String frutaImagen;
  final String titulo;
  final String tituloAppBarr;

  // const JugosDetalle({Key key, this.tituloAppBarr}) : super(key: key);
  

  const JugosDetalle({Key key, this.frutaa, this.frutaImagen, this.titulo, this.tituloAppBarr}) : super(key: key);

  @override
  _JugosDetalleState createState() => _JugosDetalleState();
}

class _JugosDetalleState extends State<JugosDetalle> {



  // @override
  // void initState() { 
  //   String tituloAppBar = ModalRoute.of(context).settings.arguments;
  //   String cambiarTituloAppBar = tituloAppBar;

  //   super.initState();
    
  // }

  @override
  void didChangeDependencies() {
    String tituloAppBarList = ModalRoute.of(context).settings.arguments;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _crearAppBar( ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // _cajaColores(),
                _crearContenido(),
                _pageView(),
              ]
            )
          )
        ],
      ),
    );
  }

  Widget _crearAppBar(){

    var recibirArgs = ModalRoute.of(context).settings.arguments;

    return SliverAppBar( 
      elevation: 2.0,
      backgroundColor: Colors.purple,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(20)
          ),
          child:  
          Text(
          '',
            style: TextStyle(color: Colors.red, fontSize: 16.0, fontFamily: 'Insani'),
          ),
        ),
        background: FadeInImage(
          image: AssetImage('assets/img/papaya_piña_manzana.jpg'),
          placeholder: AssetImage('assets/img/loading.gif'),
          fadeInDuration: Duration(milliseconds: 150),
          fit: BoxFit.cover,
        ),
      ),
    ); 
  }  


  Widget _crearContenido(){

  return Container(
    child: Column(
        children: <Widget>[
          Divider(),
          Row(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                clipBehavior: Clip.antiAlias,
                child: Image(image: AssetImage('assets/img/Pina_Manzana_Papaya2LOGO.jpg'), height: 250,),
              ),
              Container(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Ingredientes:', style: TextStyle(fontSize: 20, fontFamily: 'Insani')),
                    Divider(),
                    Text('•150gr de Piña.', style: TextStyle(fontSize: 16),),
                    Text('•150gr de Papaya.', style: TextStyle(fontSize: 16)),
                    Text('•100gr de Manzana roja.', style: TextStyle(fontSize: 16)),
                    Text('•140ml de Agua.', style: TextStyle(fontSize: 16))
                  ],
                )
              )
            ],
          ),
          Divider(),
          Container(
            margin: EdgeInsets.all(20),
            child: Text('Un jugo apropiado para mejorar la digestion, aparte de que aporta vitamina C en gran cantidad para tu dieta diaria y alto contenido en Acido Folico. La piña aporta vitaminas A, B1 y ácido fólico. Respecto al contenido en minerales, cabe señalar su riqueza en potasio, magnesio y hierro. Posee una enzima, la bromelina, que se halla en el tallo y en el fruto, que facilita la digestión. La Manzana es una compleja fórmula de salud. Es rica en pectina, un tipo de fibra soluble que no se absorbe en el intestino, retiene el agua y se convierte en un gel que actúa como una emulsión que absorbe desechos en el intestino y facilita la eliminación de toxinas con las heces. "Una manzana al día del médico te libraría". La Papaya por su  lado sirve para combatir afecciones digestivas como la Gastritis, acidez y malas digestiones. Aporta un gran porcentaje de Vitamina C y Acido folico.',
            style: TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
    );
  }

  Widget _pageView(){
    return SizedBox(
      height: 200.0,
      child: PageView(
        pageSnapping: false,
        controller: PageController(
          viewportFraction: 0.3,
          initialPage: 1,
        ),
        children: <Widget>[
          _frutaTarjeta ('Manzana', 'manzana_roja.jpg'),
          _frutaTarjeta ('Papaya', 'papaya.jpg'),
          _frutaTarjeta ('Manzana', 'piña.jpg'),

        ],
        // itemCount: 4,
        // itemBuilder: (context, i) => _frutaTarjeta(),
      ),
    );

  }
  
  Widget _frutaTarjeta (String fruta, String imageFruta){
    
    
    return Container(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              image: AssetImage('assets/img/$imageFruta'),
              placeholder: AssetImage('assets/img/no-image.jpg'),
              height: 150.0,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            fruta, 
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }

}



