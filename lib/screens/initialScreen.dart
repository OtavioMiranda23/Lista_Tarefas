// ignore_for_file: file_names

import 'package:exemplo/components/task.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(color: Colors.black26),
        title: const Text("Tarefas"),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 300),
        child: ListView(
          children: const [
            Task(
                "Aprender Flutter",
                "https://yt3.googleusercontent.com/ytc/AGIKgqM8zh66fZqGKeTkopHaU9GM4zvyuFnQhXThr37u=s900-c-k-c0x00ffffff-no-rj",
                3),
            Task(
                "Andar de Bike",
                "https://sesc-sc.com.br/sescsc/cache/imagens/institucional_imagem_pq_Institucional_id_4175.jpg",
                2),
            Task(
                "Jogar Xadrez",
                "https://www.infoescola.com/wp-content/uploads/2008/03/xadrez_255260497.jpg",
                4),
            Task(
                "Tocar Piano",
                "https://play-lh.googleusercontent.com/-Ynyw5dSb0wlY-LWeHrkC-CDxf0Mryl1i6oYGO7WaJDyTvHndUgj0Juvg_xLW1iaq8Q",
                5),
            Task(
                "Java",
                "https://s2.glbimg.com/twoewJmwpMgtGPcRPP8SxFlDVmM=/0x0:695x393/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2021/P/f/y52r4ySZWLkJjEhKLhgw/2014-11-14-java-logo.jpg",
                3),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
