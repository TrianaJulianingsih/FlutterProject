import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ppkd_flutter_1/day10/drawer.dart';

class DatepickerPage extends StatefulWidget {
  const DatepickerPage({super.key});

  @override
  State<DatepickerPage> createState() => _DatepickerState();
}

class _DatepickerState extends State<DatepickerPage> {
  DateTime? selectedDate;

  // Fungsi untuk membuat formatter
  DateFormat _debugLifecycleState(String pattern, String locale) {
    return DateFormat(pattern, locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pilih Tanggal Lahir"),
        backgroundColor: Colors.blue,
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Pilih Tanggal Lahir"),
              onPressed: () async {
                final DateTime? pickerDate = await showDatePicker(
                  context: context,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100),
                  initialDate: DateTime.now(),
                  locale: const Locale('id', 'ID'),
                );
                if (pickerDate != null) {
                  setState(() {
                    selectedDate = pickerDate;
                  });
                }
              },
            ),
            const SizedBox(height: 20),
            Text(
              selectedDate == null
                  ? "Pilih Tanggal Lahir"
                  : "Tanggal Lahir: ${_debugLifecycleState('dd MMMM yyyy', 'id_ID').format(selectedDate!)}",
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
