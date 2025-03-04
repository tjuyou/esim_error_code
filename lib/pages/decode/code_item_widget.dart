import 'package:esim_error_code/res/app_colors.dart';
import 'package:flutter/material.dart';

///CreateDate: 2025/2/19 18:01
///Author: you
///Description:

class CodeItemWidget extends StatefulWidget {
  const CodeItemWidget({
    super.key,
    this.codeName,
    required this.code,
    required this.codeDesc,
  });

  final String? codeName;
  final String code;
  final String codeDesc;

  @override
  State<CodeItemWidget> createState() => _CodeItemWidgetState();
}

class _CodeItemWidgetState extends State<CodeItemWidget> {
  Color? _color;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _color = AppColors.primary.withValues(alpha: 0.2); // 鼠标进入时改变颜色
        });
      },
      onExit: (event) {
        setState(() {
          _color = Colors.transparent; // 鼠标离开时恢复透明
        });
      },
      child: Container(
        constraints: const BoxConstraints(minHeight: 40),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                    color: AppColors.primarySecondary,
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
              style: const TextStyle(color: AppColors.content),
            ),
          ],
        ),
      ),
    );
  }
}
