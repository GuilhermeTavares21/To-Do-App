// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:to_do/util/my_btn.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;



  DialogBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          TextField(
              controller: controller,
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Adicione uma nova tarefa.."
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            MyBtn(text: "Salvar", onPressed: onSave),

            const SizedBox(width: 8,),

            MyBtn(text: "Cancelar", onPressed: onCancel),
          ],)
        ],)
      ),
    );
  }
}