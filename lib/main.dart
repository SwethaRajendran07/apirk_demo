import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Data.dart';

void main() {
  runApp(MyApp());
}

class WarehouseItem {
  final String name;
  final String slug;
  WarehouseItem({required this.name, required this.slug});

  factory WarehouseItem.fromJson(Map<String, dynamic> json) {
    final item = json['item'];
    final warehouses = item != null ? item['warehouses'][0] : null; // Assuming there's an array of warehouses
    //final slug = warehouses != null ? warehouses['slug'] : null;

    return WarehouseItem(
      name: json['name'] ?? 'No Name',
      slug: warehouses != null ? warehouses['slug'].toString() : 'No Slug',
      // final warehouse = json['item']['warehouses'];
      // final slug = warehouse != null ? warehouse['slug'] : null;

      // return WarehouseItem(
      //   name: json['name'] ?? 'No Name',
      //   slug: json['slug'] ?? 'No Slug',
      //slug: json['item']?['warehouses']?['slug']?.toString() ?? 'No Slug',
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<WarehouseItem> warehouseItems = [];
  String selectedSlug = '';
  String slugSelected = '';

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://beta.jnanaerp.com/api/warehouseget/NArJeWyE'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print(data);
      WarehouseDetails warehouseDetails = WarehouseDetails.fromJson(data);

      if (data is Map && data.containsKey('data') && data['data'] is List) {
        final items = (data['data'] as List).map((item) => WarehouseItem.fromJson(item)).toList();

        setState(() {
          warehouseItems = items;
          print({"model:${warehouseDetails.data[0].warehouses[0].slug}"});
          //slugSelected = warehouseDetails.data[0].warehouses[0].slug;
          //print(data);
          // print("items:${items[0].name}");
          // print("items:${items[0].slug}");
        });
      }
    }
  }

  void setSelectedSlug(String name) {
    final selectedWarehouseItem = warehouseItems.firstWhere(
      (item) => item.name == name,
      orElse: () => WarehouseItem(name: 'No Name', slug: 'No Slug'),
    );
    setState(() {
      selectedSlug = selectedWarehouseItem.slug;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Warehouse List'),
        ),
        body: ListView.builder(
          itemCount: warehouseItems.length,
          itemBuilder: (context, index) {
            final item = warehouseItems[index];
            return ListTile(
              title: Text(item.name),
              onTap: () {
                setState(() {
                  setSelectedSlug(item.name);
                  print(selectedSlug);
                });
              },
            );
          },
        ),
      ),
    );
  }
}
