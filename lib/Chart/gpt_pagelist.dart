// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListGpt extends StatefulWidget {
  const ListGpt({super.key});

  @override
  State<ListGpt> createState() => _ListGptState();
}

class _ListGptState extends State<ListGpt> {
  List<DataItem> dataList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('http://192.168.4.1/data.txt'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonDataList = jsonDecode(response.body);
      setState(() {
        dataList = jsonDataList.map((data) => DataItem.fromJson(data)).toList();
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      width: double.infinity,
      height: double.infinity,
      child: dataList.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: dataList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      'Değişme Saati: ${dataList[index].date}\nVeri Değeri: ${dataList[index].value}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  );
                },
            ),
    );
  }
}

class DataItem {
  final String date;
  final double value;

  DataItem({required this.date, required this.value});

  factory DataItem.fromJson(Map<String, dynamic> json) {
    return DataItem(
      date: json['date'],
      value: json['value'].toDouble(),
    );
  }
}
