import 'package:flutter/material.dart';
import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';

class Buttons extends StatefulWidget {
  Buttons({Key? key}) : super(key: key);

  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(48),
        child: _appBarWidget(),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Raised Button',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _elevatedButtonsWiget(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Flat Button',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _textButtonsWiget(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Outline Button',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _outineButtonsWiget(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Dropdown Button',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _dropdownButtonWiget(),
          SizedBox(
            height: 200.0,
          ),
        ],
      ),
    );
  }

  Widget _appBarWidget() {
    return AppBar(
      backgroundColor: MyColors.primaryColor,
      title: Text(
        MyString.button,
      ),
    );
  }

  Widget _elevatedButtonsWiget() {
    return Wrap(
      children: [
        _disabledElevatedButtonWidget(),
        _enabledElevatedButtonWidget(),
        _roundShapeElevatedButtonWidget(),
        _roundShape1ElevatedButtonWidget(),
        _oneSideRoundShapeElevatedButtonWidget(),
        _gradientElevatedButtonWidget(),
      ],
    );
  }

  Widget _disabledElevatedButtonWidget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Disabled'),
          Container(
            width: 100.0,
            child: ElevatedButton(
              onPressed: null,
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _enabledElevatedButtonWidget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Enabled'),
          Container(
            width: 100.0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.amberAccent,
              ),
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _roundShapeElevatedButtonWidget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Round Shape'),
          Container(
            width: 100.0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.amberAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _roundShape1ElevatedButtonWidget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Round Shape 1'),
          Container(
            width: 100.0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.amberAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _oneSideRoundShapeElevatedButtonWidget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('One Side Round Shape'),
          Container(
            width: 100.0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.amberAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                  ),
                ),
              ),
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _gradientElevatedButtonWidget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Gradient'),
          Container(
            width: 100.0,
            height: 40.0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                padding: const EdgeInsets.all(0.0),
              ),
              child: Container(
                width: 100.0,
                height: 40.0,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Colors.blue,
                      Colors.lightBlueAccent,
                    ],
                  ),
                ),
                child: Center(
                  child: Text(MyString.button),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _textButtonsWiget() {
    return Wrap(
      children: [
        _disabledTextButtonsWiget(),
        _enabledTextButtonsWiget(),
        _roundShapeTextButtonsWiget(),
        _roundShape1TextButtonsWiget(),
        _oneSideRoundTextButtonsWiget(),
        _gradientTextButtonsWiget(),
      ],
    );
  }

  Widget _disabledTextButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Disabled'),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.amberAccent,
              padding: const EdgeInsets.all(0.0),
            ),
            onPressed: null,
            child: Text(MyString.button),
          ),
        ],
      ),
    );
  }

  Widget _enabledTextButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Enabled'),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: Colors.amberAccent,
              padding: const EdgeInsets.all(0.0),
            ),
            child: Text(MyString.button),
          ),
        ],
      ),
    );
  }

  Widget _roundShapeTextButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Round Shape'),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: Colors.amberAccent,
              padding: const EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Text(MyString.button),
          ),
        ],
      ),
    );
  }

  Widget _roundShape1TextButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Round Shape 1'),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: Colors.amberAccent,
              padding: const EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            child: Text(MyString.button),
          ),
        ],
      ),
    );
  }

  Widget _oneSideRoundTextButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('One Side Round Shape'),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: Colors.amberAccent,
              textStyle: TextStyle(color: Colors.white),
              padding: const EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                ),
              ),
            ),
            child: Text(MyString.button),
          ),
        ],
      ),
    );
  }

  Widget _gradientTextButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Gradient'),
          Container(
            width: 100.0,
            height: 40.0,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                textStyle: TextStyle(color: Colors.white),
                padding: const EdgeInsets.all(0.0),
              ),
              child: Container(
                width: 100.0,
                height: 40.0,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Colors.blue,
                      Colors.lightBlueAccent,
                    ],
                  ),
                ),
                child: Center(
                  child: Text(MyString.button),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _outineButtonsWiget() {
    return Wrap(
      children: [
        _disabledoutineButtonsWiget(),
        _enabledoutineButtonsWiget(),
        _roundShapeoutineButtonsWiget(),
        _roundShape1outineButtonsWiget(),
        _oneSideRoundShapeoutineButtonsWiget(),
      ],
    );
  }

  Widget _disabledoutineButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Disabled'),
          Container(
            width: 100.0,
            child: OutlinedButton(
              onPressed: null,
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _enabledoutineButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Enabled'),
          Container(
            width: 100.0,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.amberAccent,
                ),
              ),
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _roundShapeoutineButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Round Shape'),
          Container(
            width: 100.0,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.amberAccent,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _roundShape1outineButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Round Shape 1'),
          Container(
            width: 100.0,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.amberAccent,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _oneSideRoundShapeoutineButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('One Side Round Shape'),
          Container(
            width: 100.0,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.amberAccent,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                  ),
                ),
              ),
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _dropdownButtonWiget() {
    return Container(
      alignment: Alignment.center,
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.blue),
        underline: Container(
          height: 2,
          color: Colors.amberAccent,
        ),
        onChanged: (String? newValue) {
          setState(
            () {
              dropdownValue = newValue!;
            },
          );
        },
        items: <String>['One', 'Two', 'Three', 'Four']
            .map<DropdownMenuItem<String>>(
          (String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          },
        ).toList(),
      ),
    );
  }
}
