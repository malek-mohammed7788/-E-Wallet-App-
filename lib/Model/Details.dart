import 'package:flutter/material.dart';

class DetailCard {
  String? numberCard;
  String? dataFinal;

  DetailCard({String? numberCard, String? dataFinal});

  factory DetailCard.fromJson(Map<String, dynamic> data) {
    return DetailCard(
      numberCard: data['number_card'],
      dataFinal: data['data_final_cvv'],
    );
  }
}
