import 'package:flutter/material.dart';

class ShowTimePicker extends StatefulWidget {
  const ShowTimePicker({Key? key}) : super(key: key);

  @override
  State<ShowTimePicker> createState() => _ShowTimePickerState();
}

class _ShowTimePickerState extends State<ShowTimePicker> {
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 15);

  void _ShowTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) => {
          setState(() {
            _timeOfDay = value!;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Time Picker"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                _timeOfDay.format(context).toString(),
                style: const TextStyle(fontSize: 25.0),
              ),
            ),
            MaterialButton(
              height: 100.0,
              minWidth: 300.0,
              onPressed: _ShowTimePicker,
              padding: const EdgeInsets.all(15.0),
              color: Colors.lightBlueAccent,
              child: const Text(
                "Time Picker",
                style: TextStyle(fontSize: 25.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
