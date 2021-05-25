import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class MyCheckRadioGroup extends StatefulWidget {
  const MyCheckRadioGroup({Key key}) : super(key: key);

  @override
  _MyCheckRadioGroupState createState() => _MyCheckRadioGroupState();
}

class _MyCheckRadioGroupState extends State<MyCheckRadioGroup> {
  DateTime date1 = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: date1,
        firstDate: DateTime(1960),
        lastDate: DateTime(2030));

    if (picked != null && picked != date1) {
      setState(() {
        date1 = picked;
        print(date1.toString());
      });
    }
  }

  TimeOfDay time1 = TimeOfDay.now();
  TimeOfDay time_picked;
  Future<Null> _selectTime(BuildContext Context) async {
    time_picked = await showTimePicker(context: context, initialTime: time1);
    setState(() {
      time1 = time_picked;
    });
  }

  var rating = 0.0;

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pizza SHOP'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Select Your Pizza Toppings',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  CheckboxGroup(
                    labelStyle: TextStyle(fontSize: 20.0),
                    labels: [
                      "Onions",
                      "Mushrooms",
                      "Black Olives",
                      "Green peppers",
                      "Extra Cheese"
                    ],
                    onSelected: (List<String> checked) =>
                        print(checked.toString()),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Select Your Pizza Size',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  RadioButtonGroup(
                      labelStyle: TextStyle(fontSize: 20.0),
                      labels: ["Small", "Medium", "Large"],
                      onSelected: (String Selected) => print(Selected)),
                  Row(
                    children: [
                      Text(
                        'Delivery Date',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          icon: Icon(Icons.date_range),
                          onPressed: () {
                            _selectDate(context);
                          }),
                      Text(
                        '${date1.year} - ${date1.month} - ${date1.day}'
                            .toString(),
                        style: TextStyle(fontSize: 20.0),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Delivery Time',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          icon: Icon(Icons.access_time),
                          onPressed: () {
                            _selectTime(context);
                          }),
                      Text(
                        ('${time1.hour} : ${time1.minute}').toString(),
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 300,
                        child: Slider(
                            value: rating,
                            onChanged: (newRating) {
                              setState(() {
                                rating = newRating;
                              });
                            },
                            divisions: 4,
                            label: '$rating',
                            min: 0,
                            max: 100),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Number Of Pizza : $rating',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Switch(
                        value: _value,
                        onChanged: (bool value) {
                          setState(() {
                            _value = value;
                          });
                        },
                        activeColor: Colors.green,
                      ),
                      Text(
                        'Value $_value',
                        style: TextStyle(fontSize: 20.0),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.teal),
                          onPressed: () {
                            return showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Request Submission'),
                                    content: Text('Do you want to submit'),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text('Yes')),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text('No')),
                                    ],
                                  );
                                });
                          },
                          child: Text(
                            'Send Request',
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
