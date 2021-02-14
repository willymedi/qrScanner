import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrscanner/providers/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    return BottomNavigationBar(
      currentIndex: uiProvider.selectedMenuOpt,
      onTap: (int i) => uiProvider.selectedMenuOpt = i,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: "Mapa",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: "Direcciones",
        ),
      ],
    );
  }
}
