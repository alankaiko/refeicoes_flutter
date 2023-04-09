import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:refeicoes_flutter/routes/app_routes.dart';

class DrawerAnimated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 110,
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            alignment: Alignment.bottomCenter,
            child: Text(
              "Vamos Cozinhar?",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          ListTile(
            title: const Text(
              'Refeições',
              style: TextStyle(color: Colors.white),
            ),
            leading: const Icon(
              Icons.restaurant,
              color: Colors.white,
            ),
            onTap: () =>
                Navigator.of(context).pushReplacementNamed(AppRoutes.HOME),
          ),
          const Divider(
            color: Colors.white,
            endIndent: 24.0,
            indent: 18.0,
            thickness: 1.5,
          ),
          ListTile(
            title: const Text(
              'Favoritos',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onTap: () => Navigator.of(context)
                .pushReplacementNamed(AppRoutes.MEAL_FAVORITE),
          ),
          const Divider(
            color: Colors.white,
            endIndent: 24.0,
            indent: 18.0,
            thickness: 1.5,
          ),
          ListTile(
            title: const Text(
              'Configurações',
              style: TextStyle(color: Colors.white),
            ),
            leading: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onTap: () =>
                Navigator.of(context).pushReplacementNamed(AppRoutes.SETTINGS),
          ),
        ],
      ),
    );
  }
}
