import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/core/constants/spacing_constants.dart';

class NextoneTextField extends HookWidget {
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
  Widget build(BuildContext context) {
    final textController = controller ?? useTextEditingController();
    final errorText = useState<String?>(null);
    final isValid = useState<bool>(false);

    useEffect(() {
      void validate() {
        final value = textController.text;
        final error = validator?.call(value);
        final valid = error == null && value.isNotEmpty;

        if (isValid.value != valid) {
          isValid.value = valid;
          onValidChanged?.call(valid);
        }

        errorText.value = error;
      }

      textController.addListener(validate);
      return () => textController.removeListener(validate);
    }, [textController]);

    final underlineBorderColour =
        isValid.value ? NextOneColors.success : NextOneColors.error;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: textController,
          keyboardType: keyboardType ??
              (useOutlineBorder ? TextInputType.multiline : TextInputType.text),
          textInputAction: textInputAction ??
              (useOutlineBorder
                  ? TextInputAction.newline
                  : TextInputAction.done),
          obscureText: obscureText ?? false,
          enabled: enabled,
          minLines: useOutlineBorder ? (minLines ?? 3) : 1,
          maxLines: useOutlineBorder ? (maxLines ?? 10) : 1,
          onChanged: (_) {},
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: filled,
            fillColor: filled ? NextOneColors.surface.withOpacity(0.9) : null,
            border: useOutlineBorder
                ? OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    borderSide:
                        BorderSide(color: underlineBorderColour, width: 1))
                : UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: underlineBorderColour,
                    ),
                  ),
            enabledBorder: useOutlineBorder
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: underlineBorderColour),
                  )
                : UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: underlineBorderColour,
                    ),
                  ),
            focusedBorder: useOutlineBorder
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
        if (errorText.value != null)
          Padding(
            padding: paddindLeft12top4bottom4,
            child: Text(
              errorText.value!,
              style: const TextStyle(color: NextOneColors.error, fontSize: 12),
            ),
          ),
      ],
    );
  }
}
