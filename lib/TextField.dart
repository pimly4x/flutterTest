import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextFieldDemo extends StatefulWidget {
  const MyTextFieldDemo({Key key}) : super(key: key);

  @override
  _MyTextFieldDemoState createState() => _MyTextFieldDemoState();
}

class _MyTextFieldDemoState extends State<MyTextFieldDemo> {
  String displayResult = '';
  TextEditingController principalController = TextEditingController();
  TextEditingController roiController = TextEditingController();
  TextEditingController termController = TextEditingController();

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('SI Calculator'),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              Container(
                child: Image(
                  width: 300,
                  height: 300,
                  image: NetworkImage(
                      'https://lh3.googleusercontent.com/proxy/2ErfCk4yltgdFw4mHg7WbDX81bpaR7i_HIdZ8a7GDEzXRFjDX5FlbJqAR9V30YpbTKeesI81T5QLn-eYSgdoJxMyxotAADizibgeuKgfrhycA-xAhYxMQjU'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: TextField(
                  controller: principalController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Principal',
                      hintText: 'Enter Principal e.g 12000',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: TextField(
                  controller: roiController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Rate of Intrest',
                      hintText: 'In Percent',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: TextField(
                  controller: termController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Term',
                      hintText: 'Term in Year',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Checkbox(
                        value: isChecked,
                        onChanged: (bool b) {
                          setState(() {
                            isChecked = b;
                          });
                        }),
                    Container(
                      child: Text('I have read and accept terms and condition'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0, top: 5.0),
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            // onPressed: () {
                            //   setState(() {
                            //     this.displayResult = _calculateTotalReturns();
                            //   });
                            // },
                            onPressed: isChecked
                                ? () {
                                    setState(() {
                                      this.displayResult =
                                          _calculateTotalReturns();
                                    });
                                  }
                                : null,
                            child: Text('Calculate'))),
                    SizedBox(width: 5.0),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              principalController.text = '';
                              roiController.text = '';
                              termController.text = '';
                              setState(() {
                                this.displayResult = '';
                              });
                            },
                            child: Text('Reset')))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  this.displayResult,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String _calculateTotalReturns() {
    double principal = double.parse(principalController.text);
    double roi = double.parse(roiController.text);
    double term = double.parse(termController.text);

    double totalAmountPayable = principal + (principal * roi * term) / 100;

    String result =
        'After $term years ,Your Investment will be worth $totalAmountPayable';
    return result;
  }
}
