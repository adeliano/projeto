import 'package:flutter/material.dart';
import 'package:projeto/helper/item_helper.dart';




class Item{
  int id;
  String descricao;

  Item();

  Item.fromMap(Map map){
    id = map[itemProvaide.idColumn];
    descricao = map[ItemProvaide.descricaoColumn];
  }

  toMap(){
    Map<String, dymanic> map ={
      idColumn: id,
      descricaoColumn: descricao
    };
  }