import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../model/item.dart';

class HomePage extends StatefulWidget {
  final Isar isar;

  HomePage({required this.isar});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int _limit = 10;
  int _offset = 0;
  List<Item> _items = [];

  @override
  void initState() {
    super.initState();
    _loadItems();
  }

  Future<void> _loadItems() async {
    final items = await widget.isar.items
        .where()
        .offset(_offset)
        .limit(_limit)
        .findAll();
    setState(() {
      _items.addAll(items);
    });
  }

  Future<void> _insertItems() async {
    final newItems = List.generate(
      100,
          (index) => Item()..name = 'Item $index'..number = index,
    );

    await widget.isar.writeTxn(() async {
      await widget.isar.items.putAll(newItems);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Isar Pagination'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _insertItems(),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _items.length + 1,
        itemBuilder: (context, index) {
          if (index == _items.length) {
            _offset += _limit;
            _loadItems();
            return Center(child: CircularProgressIndicator());
          }

          final item = _items[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text('Number: ${item.number}'),
          );
        },
      ),
    );
  }
}
