import 'package:flutter/material.dart';


class RevitalizatePage extends StatefulWidget {
  
  @override
  _RevitalizatePageState createState() => _RevitalizatePageState();
}

class _RevitalizatePageState extends State<RevitalizatePage> {
  // Color _colors = Color.fromARGB(255, 255, 0, 0);
   String tituloAppBarr = 'Papaya, Manzana y Piña';
   List<String> tituloAppBartList = ['saasd', 'asddsd', 'dfdsdaadsd'];
   String ingredientes = 'Pap, Manz y Pi';
  // final ingredients = ['150g Papaya','150g Piña','100g Manzana','140ml Agua'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: _colors,
      body: CustomScrollView(
        slivers: <Widget>[
          _crearAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _crearCard(context, ),
              ]
            )
          )
        ],
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
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(20)
          ),
          child:  
          Text(
          'Revitalizate',
            style: TextStyle(color: Colors.red, fontSize: 20.0, fontFamily: 'Insani'),
          ),
        ),
        background: FadeInImage(
          image: AssetImage('assets/img/kitchen-4942492_1920.jpg'),
          placeholder: AssetImage('assets/img/loading.gif'),
          fadeInDuration: Duration(milliseconds: 150),
          fit: BoxFit.cover,
        ),
        
      ),

    );
  }

 Widget _crearCard(BuildContext context){
    return GestureDetector(
      onTap: (){
        List paraEnviar = [tituloAppBarr, ingredientes];
        Navigator.of(context).pushNamed('detalle', arguments: paraEnviar );
      
      },
      child: Card(
        color: Colors.orange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 10,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[

              Text(tituloAppBarr, style: TextStyle(fontSize: 24, color: Colors.white, fontFamily: 'Insani' ),),
              
              Divider(thickness: 0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Divider(),
                        Text('Ingredientes:', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold, ),),
                        Divider(
                          height: 5,
                        ),
                        
                        Text('*150g de Papaya'),
                        Text('*150g de Piña'),
                        Text('*100g de Manzana'),
                        Text('*140ml de Agua'),
                      ],
                    ),
                  ),
                  Container(
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Image(image: AssetImage('assets/img/Pina_Manzana_Papaya2LOGO.jpg'), height: 130 ,),
                    )
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget crearIngredient(){
    return Column(
      children: <Widget>[
        Text('*150g de Papaya'),
        Text('*150g de Piña'),
        Text('*100g de Manzana'),
        Text('*140ml de Agua'),

      ],
    );
  }
}


