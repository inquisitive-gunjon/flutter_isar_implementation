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
  bool _loading = false;
  bool _hasMore = true;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);

    _loadItems();  // Load initial data
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent && !_loading) {
      _loadItems();
    }
  }

  Future<void> _loadItems() async {
    if (_loading || !_hasMore) return;

    setState(() {
      _loading = true;
    });

    final items = await widget.isar.items
        .where()
        .offset(_offset)
        .limit(_limit)
        .findAll();

    if (items.isNotEmpty) {
      setState(() {
        _items.addAll(items);
        _offset += _limit;
      });
    } else {
      setState(() {
        _hasMore = false;  // No more items to load
      });
    }

    setState(() {
      _loading = false;
    });
  }

  // Add a new item to the database
  Future<void> _addItem(String name, int number) async {
    final newItem = Item()
      ..name = name
      ..number = number;

    await widget.isar.writeTxn(() async {
      await widget.isar.items.put(newItem);
    });

    setState(() {
      _items.add(newItem);  // Add the new item at the top of the list
    });
  }

  // Update an existing item in the database
  Future<void> _updateItem(Item item, String newName, int newNumber) async {
    item.name = newName;
    item.number = newNumber;

    await widget.isar.writeTxn(() async {
      await widget.isar.items.put(item);  // Update item
    });

    setState(() {});
  }

  // Delete an item from the database
  Future<void> _deleteItem(Item item) async {
    await widget.isar.writeTxn(() async {
      await widget.isar.items.delete(item.id);  // Delete item by ID
    });

    setState(() {
      _items.remove(item);  // Remove the item from the list
    });
  }

  // Open a dialog to add a new item
  void _showAddItemDialog() {
    String name = '';
    String numberStr = '';

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add New Item'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Name'),
                onChanged: (value) => name = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Number'),
                keyboardType: TextInputType.number,
                onChanged: (value) => numberStr = value,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                final number = int.tryParse(numberStr) ?? 0;
                _addItem(name, number);  // Call to add the item
                Navigator.pop(context);
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  // Open a dialog to edit an existing item
  void _showEditItemDialog(Item item) {
    String newName = item.name;
    String newNumberStr = item.number.toString();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Item'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                initialValue: item.name,
                onChanged: (value) => newName = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Number'),
                keyboardType: TextInputType.number,
                initialValue: item.number.toString(),
                onChanged: (value) => newNumberStr = value,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                final newNumber = int.tryParse(newNumberStr) ?? item.number;
                _updateItem(item, newName, newNumber);  // Call to update the item
                Navigator.pop(context);
              },
              child: Text('Update'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Isar Pagination with CRUD'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: _showAddItemDialog,  // Show add item dialog
          ),
        ],
      ),
      body: _items.isEmpty && !_loading
          ? Center(child: Text('No items to display'))
          : ListView.builder(
        controller: _scrollController,
        itemCount: _items.length + (_hasMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == _items.length) {
            return _hasMore
                ? Center(child: CircularProgressIndicator())
                : Center(child: Text('No more items to load'));
          }

          final item = _items[index];

          return Dismissible(
            key: UniqueKey(),
            onDismissed: (direction) {
              _deleteItem(item);  // Call to delete the item
            },
            background: Container(color: Colors.red),
            child: ListTile(
              title: Text(item.name),
              subtitle: Text('Number: ${item.number}'),
              onTap: () => _showEditItemDialog(item),  // Show edit item dialog
            ),
          );
        },
      ),
    );
  }
}
