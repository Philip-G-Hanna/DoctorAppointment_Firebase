import 'package:doctorappointment/widget/appbar.dart';
import 'package:flutter/material.dart';

class ViewAppointment extends StatelessWidget {
  const ViewAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: TopBar("View Appointments"),
        ),
        body: Center(
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  'Name',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'ID',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'Date',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ],
            rows: const <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Sarah')),
                  DataCell(Text('19')),
                  DataCell(Text('12/12')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Janine')),
                  DataCell(Text('43')),
                  DataCell(Text('12/12')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('William')),
                  DataCell(Text('27')),
                  DataCell(Text('12/12')),
                ],
              ),
            ],
          ),
        ));
  }
}
