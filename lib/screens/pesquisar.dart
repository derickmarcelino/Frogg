import 'package:Frogg/screens/dashboard.dart';
import 'package:Frogg/screens/fortaleza.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:Frogg/screens/imagem.dart';
import 'package:Frogg/screens/salvador.dart';
import 'package:Frogg/utilities/constants.dart';

final myController = TextEditingController();

class Pesquisar extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Pesquisar> {
  bool _rememberMe = false;
  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
    
        Container( 
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField  (
            controller: myController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              hintText: 'Cidade',
              hintStyle: kHintTextStyle,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ),
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
        
      onPressed: _mudarTela, 
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'Pesquisar',
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

void _mudarTela(){

  if (myController.text == 'Salvador'){

Navigator.push( context, MaterialPageRoute(builder: (context) =>Salvador()));
  }
if (myController.text == 'Recife'){

Navigator.push( context, MaterialPageRoute(builder: (context) =>DashBoard()));
  }
if (myController.text == 'Fortaleza'){

Navigator.push( context, MaterialPageRoute(builder: (context) =>Fortaleza()));
  }


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
                    vertical: 5.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox( height: 60.0,),
                      Image.asset(
              'assets/logos/frogg_logo2.png',
              ),
                SizedBox( height: 10.0,),
                      _buildEmailTF(),
                      SizedBox( height: 10.0,),
                      _buildDtlBtn(),
                      SizedBox(height: 10.0),
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