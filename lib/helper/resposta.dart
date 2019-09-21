import 'package:flutter/material.dart';
import 'package:projeto/helper/resposta_helper.dart';




class Resposta{
  int id;
  String certo;

  Resposta();

  Resposta.fromMap(Map map){
    id = map[ItemProvaide.idColumn];
    certo = map[RespostaProvaide.respostaColumn];
  }

  toMap(){
    Map<String, dymanic> map ={
      idColumn: id,
      certoColumn: certo
    };
  }