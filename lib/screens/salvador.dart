import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Frogg/screens/imagem.dart';
import 'package:Frogg/screens/pesquisar.dart';
import 'package:Frogg/utilities/constants.dart';

class Salvador extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Salvador> {
  bool _rememberMe = false;
  Widget _buildEmailTF() {
    return Column();
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 20.0),
        new Text(
          'Salvador',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 60.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
            shadows: <Shadow>[
                  Shadow(
                    offset: Offset(5.0, 5.0),
                    blurRadius: 3.0,
                    color: Colors.green[900],
                  ),
                  Shadow(
                    offset: Offset(5.0, 5.0),
                    blurRadius: 8.0,
                    color: Colors.green[900],
                  ),
                ],
          ),
        ),
        new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Temperatura:',
              style: TextStyle(
                color: Color(0xFF689F38),
                letterSpacing: 1.5,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans',
              ),
            ),
            Text(
              '29°C',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans',
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(3.0, 3.0),
                    blurRadius: 3.0,
                    color: Colors.green[900],
                  ),
                  Shadow(
                    offset: Offset(3.0, 3.0),
                    blurRadius: 8.0,
                    color: Colors.green[900],
                  ),
                ],
              ),
            ),
          ],
        ),
        Text(
          'Alerta:',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.yellowAccent,
            letterSpacing: 2.0,
            fontSize: 35.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          'Probabilidade moderada de chuvas nas próximas horas',
          style: TextStyle(
            color: Colors.yellow,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ],
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      width: double.infinity,
      child: Image.network(
          'http://www.inmet.gov.br/projetos/cga/capre/sepra/GEO/GOES12/REGIOES/NORDESTE/ne_VI202007021300.jpg'),
    );
  }

  Widget _buildDtlBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => ImagemBoard())),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'Mais Detalhes',
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

  Widget _buildVoltarBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Pesquisar())),
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

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 20.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
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
                    vertical: 30.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 5.0),
                      _buildEmailTF(),
                      _buildPasswordTF(),
                      _buildLoginBtn(),
                      _buildDtlBtn(),
                      _buildVoltarBtn()
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
