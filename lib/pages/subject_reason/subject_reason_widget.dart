import 'package:esim_error_code/pages/extensions/code_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../code/error_code.dart';
import '../../res/app_colors.dart';

///CreateDate: 2025/3/4 10:02
///Author: you
///Description:

class SubjectReasonWidget extends StatelessWidget {
  const SubjectReasonWidget({
    super.key,
    this.subjectCode,
    this.reasonCode,
  });

  final String? subjectCode;
  final String? reasonCode;

  @override
  Widget build(BuildContext context) {
    final dataSource = SubjectReasonDataSource(subjectCode, reasonCode);
    return SfDataGrid(
      rowHeight: 55,
      source: dataSource,
      columnWidthMode: ColumnWidthMode.lastColumnFill,
      gridLinesVisibility: GridLinesVisibility.both,
      headerGridLinesVisibility: GridLinesVisibility.both,
      columns: <GridColumn>[
        _buildGridColumn(columnName: 'subjectCode', title: 'SubjectCode'),
        _buildGridColumn(columnName: 'subject', title: 'Subject'),
        _buildGridColumn(columnName: 'reasonCode', title: 'ReasonCode'),
        _buildGridColumn(columnName: 'reason', title: 'Reason'),
        _buildGridColumn(columnName: 'description', title: 'Description'),
      ],
    );
  }

  GridColumn _buildGridColumn({
    required String columnName,
    required String title,
  }) {
    return GridColumn(
      columnName: columnName,
      label: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class SubjectReasonDataSource extends DataGridSource {
  SubjectReasonDataSource(this.subjectCode, this.reasonCode) {
    final list = List.generate(specMap.length, (i) => specMap[i])
      ..sort((a, b) {
        final compare = a.$1.compareTo(b.$1);
        if (compare != 0) {
          return compare;
        }
        return a.$2.compareTo(b.$2);
      });
    if (subjectCode != null && reasonCode != null) {
      specMap
          .firstWhereOrNull((e) => e.$1 == subjectCode && e.$2 == reasonCode)
          ?.let((it) => list.insert(0, it));
    }

    _subjectData = list
        .map<DataGridRow>(
          (e) => DataGridRow(
            cells: [
              DataGridCell<String>(columnName: 'subjectCode', value: e.$1),
              DataGridCell<String?>(
                columnName: 'subject',
                value: subjectCodeMap[e.$1],
              ),
              DataGridCell<String>(columnName: 'reasonCode', value: e.$2),
              DataGridCell<String?>(
                columnName: 'reason',
                value: reasonCodeMap[e.$2],
              ),
              DataGridCell<String>(columnName: 'description', value: e.$3),
            ],
          ),
        )
        .toList();
  }

  final String? subjectCode;
  final String? reasonCode;

  List<DataGridRow> _subjectData = [];

  @override
  List<DataGridRow> get rows => _subjectData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    final cells = row.getCells();
    var bgColor = Colors.transparent;
    if (cells[0].value == subjectCode && cells[2].value == reasonCode) {
      bgColor = AppColors.primary.withValues(alpha: 0.3);
    }
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((e) {
        final isCode =
            e.columnName == 'subjectCode' || e.columnName == 'reasonCode';
        final isCenter = e.columnName != 'description';
        return Container(
          alignment: isCenter ? Alignment.center : Alignment.centerLeft,
          color: bgColor,
          padding: const EdgeInsets.all(8.0),
          child: SelectableText(
            e.value.toString(),
            style: TextStyle(
              fontSize: 16,
              color: isCode ? AppColors.primary : AppColors.content,
              fontWeight: isCenter ? FontWeight.bold : FontWeight.w400,
            ),
          ),
        );
      }).toList(),
    );
  }
}
