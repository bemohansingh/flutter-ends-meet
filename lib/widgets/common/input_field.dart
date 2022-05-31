
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputFieldWidget extends StatefulWidget {
  final Function(String)? onTextChanged;
  final Function(String)? onSubmitted;

  String text;
  String placeHolder;
  Widget? leftIcon;
  Widget? rightIcon;
  TextInputType textInputType;
  TextInputAction textInputAction;
  int maxLines;
  TextEditingController? textEditingController;
  InputFieldWidget({
    this.placeHolder = "Write here...",
    this.textInputType = TextInputType.text,
    this.maxLines = 1,
    this.textInputAction = TextInputAction.next,
    this.text = "",
    this.leftIcon,
    this.rightIcon,
    this.onTextChanged,
    this.onSubmitted,
    this.textEditingController,
  });

  @override
  _InputFieldWidgetState createState() => _InputFieldWidgetState();
}

class _InputFieldWidgetState extends State<InputFieldWidget> {
  @override
  void initState() {

    super.initState();
    if(widget.textEditingController == null) {
      widget.textEditingController = TextEditingController();
    }
  }
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    // widget.textEditingController.text(widget.text);
    return Container(
      child: TextField(
        textInputAction: widget.textInputAction,
        onChanged: widget.onTextChanged,
        onSubmitted: widget.onSubmitted,
        cursorColor: theme.primaryColor,
        maxLines: widget.maxLines,
        minLines: 1,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            labelText: widget.placeHolder,
            suffixIcon: widget.rightIcon,
            prefixIcon: widget.leftIcon),
        controller: widget.textEditingController,
        autocorrect: false,
        keyboardType: widget.textInputType,
        enableSuggestions: true,
        style: theme.textTheme.bodyText1!.copyWith(
          fontSize: 14.sp,
          color: theme.primaryColor,
        ),
      ),
    );
  }
}
