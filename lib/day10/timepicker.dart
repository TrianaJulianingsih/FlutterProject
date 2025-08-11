import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day10/drawer.dart';

class TimepickerPage extends StatefulWidget {
  const TimepickerPage({super.key});

  @override
  State<TimepickerPage> createState() => _TimepickerState();
}

class _TimepickerState extends State<TimepickerPage> {
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Atur Pengingat"),
        backgroundColor: Colors.blue,
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text("Pilih Jam"),
              onPressed: () async {
                final TimeOfDay? pickerDate = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  // firstDate: DateTime(2000),
                  // lastDate: DateTime(2100),
                );
                if (pickerDate != null) {
                  setState(() {});
                  selectedTime = pickerDate;
                }
              },
            ),
            Text(
              selectedTime == null
                  ? "Pilih Waktu Pengingat"
                  : "Pengingat diatur pukul: ${_formatTime(selectedTime!)}",
            ),
          ],
        ),
      ),
    );
  }

  String _formatTime(TimeOfDay time) {
    final hour = time.hourOfPeriod; // 0-11
    final minute = time.minute.toString().padLeft(2, '0');
    final period = time.period == DayPeriod.am ? 'AM' : 'PM';
    final displayHour = hour == 0 ? 12 : hour; // jam 0 jadi 12
    return '$displayHour:$minute $period';
  }
}

