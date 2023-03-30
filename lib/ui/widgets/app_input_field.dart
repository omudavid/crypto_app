import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppInputField extends StatelessWidget {
  const AppInputField(
      {this.maxLength,
      this.autofocus = false,
      this.readOnly = false,
      this.onChanged,
      this.initialValue,
      this.label,
      this.hintText,
      this.keyboardType,
      this.obscureText = false,
      this.controller,
      required this.validator,
      this.helperText,
      this.height,
      this.hintColor,
      this.borderWidth,
      this.onTap,
      required this.onSaved,
      this.focusNode,
      this.textInputAction,
      this.onFieldSubmitted,
      this.suffixIcon,
      this.prefixIcon,
      this.autovalidate = AutovalidateMode.disabled,
      this.maxLines = 1,
      this.inputFormatters,
      this.errorText,
      Key? key,
      this.spacerHeight,
      this.topPadding,
      this.enableInteractiveSelection = true,
      this.labelTextStyle,
      this.enable = true,
      this.onTapDown,
      this.isRequired,
      this.filled = false,
      this.labelText,
      this.borderless = false})
      : super(key: key);

  final bool? filled;
  final bool? enable;
  final bool? isRequired;
  final Function? onTapDown;
  final TextStyle? labelTextStyle;
  final bool? enableInteractiveSelection;
  final double? topPadding;
  final double? spacerHeight;
  final int? maxLength;
  final int? maxLines;
  final String? hintText;
  final String? errorText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? helperText;
  final Color? hintColor;
  final TextEditingController? controller;
  final double? borderWidth;
  final double? height;
  final String? Function(String?) validator;
  final String? Function(String?) onSaved;
  final VoidCallback? onTap;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final Function(String)? onFieldSubmitted;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? label;
  final String? initialValue;
  final Function(String)? onChanged;
  final bool? readOnly;
  final String? labelText;
  final bool autofocus;
  final AutovalidateMode? autovalidate;
  final List<TextInputFormatter>? inputFormatters;
  final bool borderless;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    Widget textFormField = ConstrainedBox(
      constraints: BoxConstraints.tightFor(height: 56),
      child: TextFormField(
        readOnly: readOnly ?? false,
        enabled: enable,
        autovalidateMode: autovalidate,
        onChanged: onChanged,
        maxLength: maxLength,
        initialValue: initialValue,
        obscureText: obscureText,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: keyboardType,
        controller: controller != null ? controller : null,
        focusNode: focusNode,
        textInputAction: textInputAction,
        onFieldSubmitted: onFieldSubmitted,
        autofocus: autofocus,
        maxLines: maxLines,
        inputFormatters: inputFormatters,
        //style: kInputTextStyle(context),
        validator: validator,
        onSaved: onSaved,
        onTap: onTap,
        cursorColor: color,
        decoration: InputDecoration(
          filled: filled,
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 1, style: BorderStyle.solid, color: color),
            borderRadius: BorderRadius.circular(16),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 1, style: BorderStyle.solid, color: color),
            borderRadius: BorderRadius.circular(16),
          ),
          border: OutlineInputBorder(
            borderSide:
                BorderSide(width: 1, style: BorderStyle.solid, color: color),
            borderRadius: BorderRadius.circular(16),
          ),
          labelStyle: const TextStyle(
            fontSize: 15,
            color: Color(0xFF4F4F4F),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 1, style: BorderStyle.solid, color: color),
            borderRadius: BorderRadius.circular(16),
          ),
          hintText: hintText,
          labelText: labelText,
          helperMaxLines: 2,
          errorMaxLines: 2,
          errorText: errorText,
          hintStyle: TextStyle(
              fontWeight: FontWeight.w300,
              color: hintColor ?? Color(0xFFB5C0D7)),
          helperText: helperText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon == null
              ? SizedBox()
              : SizedBox(
                  height: 24,
                  width: 24,
                  child: prefixIcon,
                ),
        ),
      ),
    );

    ///If the text field has a label above
    return label == null
        ? textFormField
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: topPadding ?? 0,
              ),
              Text(
                label!,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: topPadding ?? 0,
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: textFormField,
              )
            ],
          );
  }
}
