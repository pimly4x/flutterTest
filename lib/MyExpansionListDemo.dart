import 'package:flutter/material.dart';
import 'package:first_flutter_app/item.dart';

class MyExpansionList extends StatefulWidget {
  const MyExpansionList({Key key}) : super(key: key);

  @override
  _MyExpansionListState createState() => _MyExpansionListState();
}

class _MyExpansionListState extends State<MyExpansionList> {
  List<Item> _data = generateItem(10);

  Widget _buildListPanel() {
    return ExpansionPanelList(
        expansionCallback: (int index, bool _isExapnded) {
          setState(() {
            _data[index].isExpanded = !_isExapnded;
          });
        },
        children: _data.map<ExpansionPanel>((Item item) {
          return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExapnded) {
                return ListTile(
                  title: Text(item.headerValue),
                );
              },
              body: ListTile(
                title: Text(item.expandedValue),
                subtitle: Text('To delete this panel ,tap the trash icon'),
                trailing: Icon(Icons.delete),
                onTap: () {
                  setState(() {
                    _data.removeWhere((element) => item == element);
                  });
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('${item.headerValue} is deleted'),
                  ));
                },
              ),
              isExpanded: item.isExpanded);
        }).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panel Information'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: _buildListPanel(),
        ),
      ),
    );
  }
}

List<Item> generateItem(int numberOfItems) {
  return List.generate(numberOfItems, (index) {
    return Item(
        headerValue: 'Panel $index',
        expandedValue: 'This is item number $index');
  });
}
