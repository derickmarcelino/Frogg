import 'package:Frogg/screens/dashboard.dart';
import 'package:Frogg/utilities/constants.dart';
import 'package:flutter/material.dart';





import 'package:flutter/services.dart';


class ImagemBoard extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<ImagemBoard> {
  bool _rememberMe = false;
  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
             Text('Imagens em Tempo Real',
             textAlign: TextAlign.center,
             style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.0,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          )
        ),
        SizedBox(height: 10.0),
        
        Text('Visível',textAlign: TextAlign.center,),
Image.network('http://www.inmet.gov.br/projetos/cga/capre/sepra/GEO/GOES12/REGIOES/NORDESTE/ne_VPR202007021320.jpg'),
    SizedBox(height: 10.0),
    Text('Infravermelho Termal',textAlign: TextAlign.center,),
    Image.network('http://www.inmet.gov.br/projetos/cga/capre/sepra/GEO/GOES12/REGIOES/NORDESTE/ne_TN202007021320.jpg'),
         SizedBox(height: 10.0),
         Text('Vapor dagua',textAlign: TextAlign.center,),
        Image.network('http://www.inmet.gov.br/projetos/cga/capre/sepra/GEO/GOES12/REGIOES/NORDESTE/ne_VA202007021320.jpg'),
       SizedBox(height: 10.0),
        Text('Vapor dagua Realçado',textAlign: TextAlign.center,),
         Image.network('http://www.inmet.gov.br/projetos/cga/capre/sepra/GEO/GOES12/REGIOES/NORDESTE/ne_VI202007021300.jpg'),
  SizedBox(height: 10.0),
   Text('Topo das Nuvens',textAlign: TextAlign.center,),
        Image.network('http://www.inmet.gov.br/projetos/cga/capre/sepra/GEO/GOES12/REGIOES/NORDESTE/ne_IV202007021320.jpg'),
        SizedBox(height: 10.0),
      ],
    );
  }

Widget _buildDtlBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      width: double.infinity,
      child: 
      RaisedButton(
        elevation: 5.0,
      onPressed: () => 
        Navigator.push(
                   context,
                    MaterialPageRoute(builder: (context) =>DashBoard())),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        ),
        
        color: Colors.white,
       
        child: Text(
          'Voltar',
          style: TextStyle(
            color: Color(0xFF689F38),
            letterSpacing: 1.5,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
    
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                        Color(0xFF9CCC65),
                      Color(0xFF7CB342),
                      Color(0xFF689F38),
                      Color(0xFF228B2F),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 60.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      _buildEmailTF(),
                      SizedBox(
                        height: 10.0,
                      ),
                      _buildDtlBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
