import 'package:app_fluxolivrep/src/pages/admin_page.dart';
import 'package:app_fluxolivrep/src/pages/cad_usuario_page.dart';
import 'package:app_fluxolivrep/src/pages/home_page.dart';
import 'package:app_fluxolivrep/src/pages/login_page.dart';
import 'package:app_fluxolivrep/src/pages/users_page.dart';
import 'package:app_fluxolivrep/src/providers/auth_provider.dart';
import 'package:app_fluxolivrep/src/providers/user_register_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppFluxolivre extends StatelessWidget {
  const AppFluxolivre({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserRegisterProvider()),
        ChangeNotifierProvider(
          create: (context) => AuthProvider()..loadToken(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AppFluxoLivre',
        routes: {
          '/': (_) => LoginPage(),
          '/home': (_) => HomePage(),
          '/novousuario': (_) => CadUsuarioPage(),
          '/admin': (_) => AdminPage(),
          '/users': (_) => UsersPage(),
        },
      ),
    );
  }
}
