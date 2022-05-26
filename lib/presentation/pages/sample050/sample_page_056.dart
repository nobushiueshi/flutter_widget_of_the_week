import 'package:flutter/material.dart';

class SamplePage056 extends StatelessWidget {
  const SamplePage056({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataTable'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            sortColumnIndex: 1,
            columns: const [
              DataColumn(
                label: Text('年'),
                numeric: true,
              ),
              DataColumn(
                label: Text('試合'),
              ),
              DataColumn(
                label: Text('打席'),
              ),
              DataColumn(
                label: Text('打率'),
              ),
              DataColumn(
                label: Text('本塁打'),
              ),
            ],
            rows: const [
              DataRow(
                cells: [
                  DataCell(
                    Text('2021'),
                  ),
                  DataCell(
                    Text('155'),
                  ),
                  DataCell(
                    Text('639'),
                  ),
                  DataCell(
                    Text('0.257'),
                  ),
                  DataCell(
                    Text('46'),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text('2020'),
                  ),
                  DataCell(
                    Text('44'),
                  ),
                  DataCell(
                    Text('175'),
                  ),
                  DataCell(
                    Text('0.190'),
                  ),
                  DataCell(
                    Text('7'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
