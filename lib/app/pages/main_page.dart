import 'package:flutter/material.dart';

import '../shared/widgets/custom_drawer.dart';
import 'card_page/card_page.dart';
import 'image_assets.dart';
import 'list_page/list_view.dart';
import 'list_page/list_view_horizontal.dart';
import 'tarefa_page.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController(initialPage: 0);
  int posicaoPagina = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Main Page"),
        ),
        drawer: const CustomDrawer(),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    posicaoPagina = value;
                  });
                },
                children: const [
                  CardPage(),
                  ImageAssetsPage(),
                  ListViewPage(),
                  ListViewHorizontal(),
                  TarefaPage(),
                ],
              ),
            ),
            BottomNavigationBar(
                onTap: (value) {
                  controller.jumpToPage(value);
                },
                currentIndex: posicaoPagina,
                items: const [
                  BottomNavigationBarItem(
                      backgroundColor: Colors.black,
                      label: "Pag1",
                      icon: Icon(Icons.home)),
                  BottomNavigationBarItem(
                      backgroundColor: Colors.black,
                      label: "Pag2",
                      icon: Icon(Icons.add)),
                  BottomNavigationBarItem(
                      backgroundColor: Colors.black,
                      label: "Pag3",
                      icon: Icon(Icons.person)),
                  BottomNavigationBarItem(
                      backgroundColor: Colors.black,
                      label: "Pag4",
                      icon: Icon(Icons.album)),
                      BottomNavigationBarItem(
                      backgroundColor: Colors.black,
                      label: "Tarefas",
                      icon: Icon(Icons.list))
                ])
          ],
        ),
      ),
    );
  }
}
