import 'package:esim_error_code/res/app_colors.dart';
import 'package:flutter/material.dart';

///CreateDate: 2025/2/19 18:01
///Author: you
///Description:

class CodeWidget extends StatefulWidget {
  const CodeWidget({
    super.key,
    this.codeName,
    required this.code,
    required this.codeDesc,
  });

  final String? codeName;
  final String code;
  final String codeDesc;

  @override
  State<CodeWidget> createState() => _CodeWidgetState();
}

class _CodeWidgetState extends State<CodeWidget> {
  Color? _color;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _color = Colors.black.withValues(alpha: 0.1); // 鼠标进入时改变颜色
        });
      },
      onExit: (event) {
        setState(() {
          _color = null;
        });
      },
      child: Container(
        constraints: const BoxConstraints(minHeight: 40),
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: widget.codeName == null ? 0 : 5,
        ),
        color: _color,
        alignment: Alignment.centerLeft,
        child: Flex(
          direction: widget.codeName == null ? Axis.horizontal : Axis.vertical,
          crossAxisAlignment: widget.codeName == null
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 60),
              child: Text.rich(
                TextSpan(
                  text: widget.codeName,
                  style: const TextStyle(
                    color: AppColors.gray,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    if (widget.codeName != null)
                      const WidgetSpan(
                        child: SizedBox(
                          width: 10,
                        ),
                      ),
                    TextSpan(
                      text: widget.code,
                      style: const TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SelectableText(
              widget.codeDesc,
              style: const TextStyle(color: AppColors.primarySecondary),
            ),
          ],
        ),
      ),
    );
  }
}
