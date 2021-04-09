import 'package:flutter/material.dart';
import 'package:itmm_app/Screens/Login/login_screen.dart';
import 'package:itmm_app/Screens/components/background.dart';
import 'package:itmm_app/components/rounded_button.dart';
import 'package:itmm_app/constants.dart';


class Body extends StatelessWidget {





 
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
        return Background(
          child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
            SizedBox(height: size.height * 0.1),
              Image.asset('assets/LogoUNN.png', height: size.height * 0.45, width: 300,
            ),
            SizedBox(height: size.height * 0.03),
          RoundedBotton(
          text:"LOGIN",
          press:(){Navigator.push(context, MaterialPageRoute(builder: (context) {return LoginScreen();
                },
              ),
            );
          },
        ),
          RoundedBotton(
          text:"SIGN UP",
          color: KPrimaryLightColor,
          textColor: Colors.white,
          press: () {},
        ),    
      ],
      ),
    ));
  }
}



