import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class getTextField extends StatelessWidget {
  final String hint;
  const getTextField({
    required this.hint,
    super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide:const BorderSide(color: Colors.white, width: 0),

                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                  filled: true,
                  fillColor: Colors.grey[100],
                  hintText: hint,
                ),
              );
  }
}