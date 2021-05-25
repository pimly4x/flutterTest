import 'package:flutter/material.dart';
import 'package:first_flutter_app/MyTableData.dart';

class MyTableDataDemo extends StatefulWidget {
  const MyTableDataDemo({Key key}) : super(key: key);

  @override
  _MyTableDataDemoState createState() => _MyTableDataDemoState();
}

class _MyTableDataDemoState extends State<MyTableDataDemo> {
  List<Person> persons;
  bool sort;
  int _sortColumn = 0;

  void initState() {
    sort = false;
    persons = Person.getPersonList();
    super.initState();
  }

  onSortColumn(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      if (ascending) {
        persons.sort((a, b) => a.firstName.compareTo(b.firstName));
      } else {
        persons.sort((a, b) => b.firstName.compareTo(a.firstName));
      }
    } else if (columnIndex == 1) {
      if (ascending) {
        persons.sort((a, b) => a.lastName.compareTo(b.lastName));
      } else {
        persons.sort((a, b) => b.lastName.compareTo(a.lastName));
      }
    }
  }

  DataTable dataBody() {
    return DataTable(
      sortAscending: sort,
      sortColumnIndex: _sortColumn,
      columns: [
        DataColumn(
            label: Text(
              'First Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            tooltip: 'This is First Name',
            onSort: (columnIndex, ascending) {
              setState(() {
                _sortColumn = columnIndex;
                sort = !sort;
              });
              onSortColumn(columnIndex, ascending);
            }),
        DataColumn(
            label: Text(
              'Last Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            tooltip: 'This is First Name',
            onSort: (columnIndex, ascending) {
              setState(() {
                _sortColumn = columnIndex;
                sort = !sort;
              });
              onSortColumn(columnIndex, ascending);
            }),
      ],
      rows: persons
          .map((person) => DataRow(cells: [
                DataCell(
                  Text(person.firstName),
                  onTap: () => print('Selected ${person.firstName}'),
                ),
                DataCell(Text(person.lastName))
              ]))
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('DataTabel Demo')),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(child: dataBody()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
