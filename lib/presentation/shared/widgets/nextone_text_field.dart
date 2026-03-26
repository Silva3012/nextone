import 'package:flutter/material.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/core/constants/spacing_constants.dart';

class NextoneTextField extends StatefulWidget {
  const NextoneTextField({
    super.key,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.obscureText,
    this.enabled,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.filled = false,
    this.onValidChanged,
    this.maxLines,
    this.minLines,
    this.useOutlineBorder = false,
  });

  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final bool? enabled;
  final bool filled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final void Function(bool isValid)? onValidChanged;
  final bool useOutlineBorder;
  final int? maxLines;
  final int? minLines;

  @override
  State<NextoneTextField> createState() => _NextoneTextFieldState();
}

class _NextoneTextFieldState extends State<NextoneTextField> {
  TextEditingController? _internalController;

  TextEditingController get _effectiveController =>
      widget.controller ?? _internalController!;

  String? _errorText;
  bool _isValid = false;

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      _internalController = TextEditingController();
    }
    _effectiveController.addListener(_validate);
  }

  @override
  void didUpdateWidget(NextoneTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller) {
      final oldEffectiveController =
          oldWidget.controller ?? _internalController!;
      oldEffectiveController.removeListener(_validate);

      if (widget.controller == null && oldWidget.controller != null) {
        _internalController =
            TextEditingController(text: oldWidget.controller!.text);
      } else if (widget.controller != null && oldWidget.controller == null) {
        _internalController?.dispose();
        _internalController = null;
      }
      _effectiveController.addListener(_validate);
    }
  }

  @override
  void dispose() {
    _effectiveController.removeListener(_validate);
    _internalController?.dispose();
    super.dispose();
  }

  void _validate() {
    final value = _effectiveController.text;
    final error = widget.validator?.call(value);
    final valid = error == null && value.isNotEmpty;

    bool needsStateUpdate = false;

    if (_isValid != valid) {
      _isValid = valid;
      needsStateUpdate = true;
      widget.onValidChanged?.call(valid);
    }

    if (_errorText != error) {
      _errorText = error;
      needsStateUpdate = true;
    }

    if (needsStateUpdate && mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final underlineBorderColour =
        _isValid ? NextOneColors.success : NextOneColors.error;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: _effectiveController,
          keyboardType: widget.keyboardType ??
              (widget.useOutlineBorder
                  ? TextInputType.multiline
                  : TextInputType.text),
          textInputAction: widget.textInputAction ??
              (widget.useOutlineBorder
                  ? TextInputAction.newline
                  : TextInputAction.done),
          obscureText: widget.obscureText ?? false,
          enabled: widget.enabled,
          minLines: widget.useOutlineBorder ? (widget.minLines ?? 3) : 1,
          maxLines: widget.useOutlineBorder ? (widget.maxLines ?? 10) : 1,
          onChanged: (_) {},
          decoration: InputDecoration(
            hintText: widget.hintText,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,
            filled: widget.filled,
            fillColor: widget.filled
                ? NextOneColors.surface.withValues(alpha: 0.9)
                : null,
            border: widget.useOutlineBorder
                ? OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    borderSide:
                        BorderSide(color: underlineBorderColour, width: 1))
                : UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: underlineBorderColour,
                    ),
                  ),
            enabledBorder: widget.useOutlineBorder
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: underlineBorderColour),
                  )
                : UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: underlineBorderColour,
                    ),
                  ),
            focusedBorder: widget.useOutlineBorder
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        BorderSide(color: underlineBorderColour, width: 2),
                  )
                : UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: underlineBorderColour, width: 2),
                  ),
            errorText: null,
          ),
        ),
        if (_errorText != null)
          Padding(
            padding: paddindLeft12top4bottom4,
            child: Text(
              _errorText!,
              style: const TextStyle(color: NextOneColors.error, fontSize: 12),
            ),
          ),
      ],
    );
  }
}
