import 'package:flutter/material.dart';
import 'package:projeto/helper/pergunta_helper.dart';




class Pergunta{
  int id;
  String enunciado;

  Pergunta();

  Pergunta.fromMap(Map map){
    id = map[PerguntamProvaide.idColumn];
    enunciado = map[perguntaProvaide.enunciadoColumn];
  }

  toMap(){
    Map<String, dymanic> map ={
      idColumn: id,
      enunciadoColumn: enunciado
    };
  }


  
