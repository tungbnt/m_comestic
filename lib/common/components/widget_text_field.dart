import 'dart:ui' as ui;


import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mcomestic/modules/util/themes/app_color_theme.dart';
import 'package:mcomestic/modules/util/themes/app_text_theme.dart';
import 'package:mcomestic/modules/util/themes/theme_service.dart';


class WidgetTextField extends StatefulWidget {
  const WidgetTextField({
    super.key,
    this.formKey,
    this.controller,
    this.validator,
    this.readOnly = false,
    this.hintText,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType,
    this.onChange,
    this.inputFormatters,
    this.focusNode,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
    this.labelText,
    this.contentPadding,
    this.suffixText,
    this.enabledBorder,
    this.focusedBorder,
    this.textLength = 0,
    this.onTapSuffixIcon,
    this.paddingSuffixIcon = 10,
    // this.autoSetState = false,
  });

  final GlobalKey<FormFieldState>? formKey;
  final TextEditingController? controller;
  final bool readOnly;
  final String? Function(String?)? validator;
  final String? hintText;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;
  final Function(String)? onChange;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onTap;
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onTapSuffixIcon;
  final String? labelText;
  final String? suffixText;
  final EdgeInsetsGeometry? contentPadding;
  final BorderSide? enabledBorder;
  final BorderSide? focusedBorder;
  final int textLength;
  final double paddingSuffixIcon;

  // final bool autoSetState;

  @override
  State<WidgetTextField> createState() => _WidgetTextFieldState();
}

class _WidgetTextFieldState extends State<WidgetTextField> {
  @override
  Widget build(BuildContext context) {
    final colorTheme = ThemeService.getAppColorTheme(context);
    final textTheme = ThemeService.getAppTextTheme(context);
    return TextFormField(
        cursorColor: AppColorTheme.black1B1D25,
        key: widget.formKey,
        onTap: widget.onTap,
        readOnly: widget.readOnly,
        onChanged: (text) {
          setState(() {
            // print(text);
          });
        },
        validator: widget.validator,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        inputFormatters: widget.inputFormatters,
        textCapitalization: widget.textCapitalization,
        autovalidateMode: AutovalidateMode.disabled,
        style: textTheme.inputHint.copyWith(color: colorTheme.gray.shade700),
        decoration: InputDecoration(
          isDense: true,
          label: widget.labelText != null
              ? Baseline(
                  baseline: 2,
                  baselineType: TextBaseline.alphabetic,
                  child: Text(
                    widget.labelText ?? "",
                    style: AppTextTheme.of(context)
                        .bodyMedium
                        .copyWith(color: AppColorTheme.of(context).gray[500]),
                  ),
                )
              : null,
          hintText: widget.hintText,
          suffixText: widget.suffixText,
          filled: true,
          prefixIcon: widget.prefixIcon,
          fillColor: Colors.transparent,
          alignLabelWithHint: true,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          contentPadding: widget.contentPadding,
          hintStyle:
              textTheme.inputHint.copyWith(color: colorTheme.gray.shade700),
          errorStyle:
              textTheme.textW400S13.copyWith(color: AppColorTheme.redF04438),
          suffixIcon: widget.suffixText == null
              ? widget.controller!.text.length > widget.textLength
                  ? IconButton(
                      onPressed: () {
                        widget.onTapSuffixIcon?.call();
                        setState(() {});
                      },
                      icon: Padding(
                        padding: EdgeInsets.only(top: widget.paddingSuffixIcon),
                        child: Icon(
                          widget.suffixIcon,
                          color: AppColorTheme.gray898C98,
                        ),
                      ))
                  : null
              : null,
          enabledBorder: UnderlineInputBorder(
            borderSide: widget.enabledBorder ??
                BorderSide(
                  color: colorTheme.gray.shade400,
                ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: widget.focusedBorder ??
                BorderSide(
                  color: colorTheme.gray.shade700,
                ),
          ),
        ));
  }
}

class CustomTextFormField extends FormField<String> {
  /// Creates a [FormField] that contains a [TextField].
  ///
  /// When a [controller] is specified, [initialValue] must be null (the
  /// default). If [controller] is null, then a [TextEditingController]
  /// will be constructed automatically and its `text` will be initialized
  /// to [initialValue] or the empty string.
  ///
  /// For documentation about the various parameters, see the [TextField] class
  /// and [TextField], the constructor.
  CustomTextFormField({
    Key? key,
    this.controller,
    String? initialValue,
    FocusNode? focusNode,
    InputDecoration? decoration,
    final String? labelText,
    final String? hintText,
    TextInputType? keyboardType,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextInputAction? textInputAction,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    TextAlign textAlign = TextAlign.start,
    TextAlignVertical? textAlignVertical,
    bool autofocus = false,
    bool readOnly = false,
    ToolbarOptions? toolbarOptions,
    bool? showCursor,
    String obscuringCharacter = '•',
    bool obscureText = false,
    bool autocorrect = true,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    bool enableSuggestions = true,
    MaxLengthEnforcement? maxLengthEnforcement,
    int? maxLines = 1,
    int? minLines,
    bool expands = false,
    int? maxLength,
    bool multiline = false,
    bool isDense = false,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    FormFieldSetter<String>? onSaved,
    GestureTapCallback? onTap,
    MouseCursor? mouseCursor,
    void Function(String, Map<String, dynamic>)? onAppPrivateCommand,
    AutovalidateMode? autovalidateMode,
    FormFieldValidator<String>? validator,
    List<TextInputFormatter>? inputFormatters,
    bool? enabled,
    double cursorWidth = 1.2,
    double? cursorHeight = 20,
    Radius? cursorRadius,
    Color? cursorColor = AppColorTheme.black1B1D25,
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    Brightness? keyboardAppearance,
    bool? enableInteractiveSelection,
    TextSelectionControls? selectionControls,
    InputCounterWidgetBuilder? buildCounter,
    ScrollPhysics? scrollPhysics,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    Iterable<String>? autofillHints,
    ScrollController? scrollController,
    Clip clipBehavior = Clip.hardEdge,
    String? restorationId,
    bool enableIMEPersonalizedLearning = true,
    final List<Widget>? stackChildren,
  })  : assert(initialValue == null || controller == null),
        assert(obscuringCharacter.length == 1),
        assert(minLines == null || minLines > 0),
        assert(
          (maxLines == null) || (minLines == null) || (maxLines >= minLines),
          "minLines can't be greater than maxLines",
        ),
        assert(
          !expands || (maxLines == null && minLines == null),
          'minLines and maxLines must be null when expands is true.',
        ),
        assert(
          !obscureText || maxLines == 1,
          'Obscured fields cannot be multiline.',
        ),
        assert(
          maxLength == null ||
              maxLength == TextField.noMaxLength ||
              maxLength > 0,
        ),
        super(
          key: key,
          restorationId: restorationId,
          initialValue:
              controller != null ? controller.text : (initialValue ?? ''),
          onSaved: onSaved,
          validator: validator,
          enabled: enabled ?? decoration?.enabled ?? true,
          autovalidateMode: autovalidateMode ??
              (validator != null ? AutovalidateMode.onUserInteraction : null),
          builder: (FormFieldState<String> field) {
            final BuildContext context = field.context;
            final theme = Theme.of(field.context).inputDecorationTheme;
            final _CustomTextFormFieldState state =
                field as _CustomTextFormFieldState;
            final InputDecoration effectiveDecoration = (decoration ??
                    const InputDecoration())
                .copyWith(
                  hintText: hintText,
                  alignLabelWithHint: true,
                  isDense: isDense,
                )
                .applyDefaults(theme)
                .copyWith(
                  enabledBorder:
                      field.errorText == null ? null : theme.errorBorder,
                  focusedBorder:
                      field.errorText == null ? null : theme.errorBorder,
                  label: labelText == null
                      ? null
                      : Baseline(
                          baseline: 2,
                          baselineType: TextBaseline.alphabetic,
                          child: Text(
                            labelText,
                            style: AppTextTheme.of(context).bodyMedium.copyWith(
                                  color: AppColorTheme.of(context).gray[500],
                                  height: 20 / 15,
                                ),
                          ),
                        ),
                );
            void onChangedHandler(String value) {
              field.didChange(value);

              if (onChanged != null) {
                onChanged(value);
              }
            }

            Widget current = UnmanagedRestorationScope(
              bucket: field.bucket,
              child: TextField(
                restorationId: restorationId,
                controller: state._effectiveController,
                focusNode: focusNode,
                decoration: effectiveDecoration,
                keyboardType: keyboardType,
                textInputAction: textInputAction,
                style: style ?? AppTextTheme.of(context).inputField,
                strutStyle: strutStyle,
                textAlign: textAlign,
                textAlignVertical: textAlignVertical,
                textDirection: textDirection,
                textCapitalization: textCapitalization,
                autofocus: autofocus,
                toolbarOptions: toolbarOptions,
                readOnly: readOnly,
                showCursor: showCursor,
                obscuringCharacter: obscuringCharacter,
                obscureText: obscureText,
                autocorrect: autocorrect,
                smartDashesType: smartDashesType ??
                    (obscureText
                        ? SmartDashesType.disabled
                        : SmartDashesType.enabled),
                smartQuotesType: smartQuotesType ??
                    (obscureText
                        ? SmartQuotesType.disabled
                        : SmartQuotesType.enabled),
                enableSuggestions: enableSuggestions,
                maxLengthEnforcement: maxLengthEnforcement,
                maxLines: multiline ? null : maxLines,
                minLines: minLines,
                expands: expands,
                maxLength: maxLength,
                onChanged: onChangedHandler,
                onTap: onTap,
                onAppPrivateCommand: onAppPrivateCommand,
                onEditingComplete: onEditingComplete,
                onSubmitted: onFieldSubmitted,
                inputFormatters: inputFormatters,
                enabled: enabled ?? decoration?.enabled ?? true,
                cursorWidth: cursorWidth,
                cursorHeight: cursorHeight,
                cursorRadius: cursorRadius,
                cursorColor: cursorColor,
                selectionHeightStyle: selectionHeightStyle,
                selectionWidthStyle: selectionWidthStyle,
                scrollPadding: scrollPadding,
                scrollPhysics: scrollPhysics,
                scrollController: scrollController,
                dragStartBehavior: dragStartBehavior,
                keyboardAppearance: keyboardAppearance,
                enableInteractiveSelection:
                    enableInteractiveSelection ?? (!obscureText || !readOnly),
                selectionControls: selectionControls,
                mouseCursor: mouseCursor,
                buildCounter: buildCounter,
                autofillHints: autofillHints,
                clipBehavior: clipBehavior,
                enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
              ),
            );

            if (stackChildren != null || stackChildren?.isNotEmpty == true) {
              current = Stack(
                clipBehavior: Clip.none,
                children: [
                  current,
                  ...stackChildren!,
                ],
              );
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                current,
                Visibility(
                  visible: field.hasError,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          // Icon(
                          //   Remix.error_warning_line,
                          //   color: Theme.of(field.context)
                          //       .inputDecorationTheme
                          //       .errorStyle
                          //       ?.color,
                          //   size: 16,
                          // ),
                          const SizedBox(width: 4),
                          Text(
                            field.errorText ?? '',
                            style: Theme.of(field.context)
                                .inputDecorationTheme
                                .errorStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );

  /// Controls the text being edited.
  ///
  /// If null, this widget will create its own [TextEditingController] and
  /// initialize its [TextEditingController.text] with [initialValue].
  final TextEditingController? controller;

  @override
  FormFieldState<String> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends FormFieldState<String> {
  RestorableTextEditingController? _controller;

  TextEditingController get _effectiveController =>
      _textFormField.controller ?? _controller!.value;

  CustomTextFormField get _textFormField => super.widget as CustomTextFormField;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    super.restoreState(oldBucket, initialRestore);
    if (_controller != null) {
      _registerController();
    }
    // Make sure to update the internal [FormFieldState] value to sync up with
    // text editing controller value.
    setValue(_effectiveController.text);
  }

  void _registerController() {
    assert(_controller != null);
    registerForRestoration(_controller!, 'controller');
  }

  void _createLocalController([TextEditingValue? value]) {
    assert(_controller == null);
    _controller = value == null
        ? RestorableTextEditingController()
        : RestorableTextEditingController.fromValue(value);
    if (!restorePending) {
      _registerController();
    }
  }

  @override
  void initState() {
    super.initState();
    if (_textFormField.controller == null) {
      _createLocalController(widget.initialValue != null
          ? TextEditingValue(text: widget.initialValue!)
          : null);
    } else {
      _textFormField.controller!.addListener(_handleControllerChanged);
    }
  }

  @override
  void didUpdateWidget(CustomTextFormField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_textFormField.controller != oldWidget.controller) {
      oldWidget.controller?.removeListener(_handleControllerChanged);
      _textFormField.controller?.addListener(_handleControllerChanged);

      if (oldWidget.controller != null && _textFormField.controller == null) {
        _createLocalController(oldWidget.controller!.value);
      }

      if (_textFormField.controller != null) {
        setValue(_textFormField.controller!.text);
        if (oldWidget.controller == null) {
          unregisterFromRestoration(_controller!);
          _controller!.dispose();
          _controller = null;
        }
      }
    }
  }

  @override
  void dispose() {
    _textFormField.controller?.removeListener(_handleControllerChanged);
    _controller?.dispose();
    super.dispose();
  }

  @override
  void didChange(String? value) {
    super.didChange(value);

    if (_effectiveController.text != value) {
      _effectiveController.text = value ?? '';
    }
  }

  @override
  void reset() {
    // setState will be called in the superclass, so even though state is being
    // manipulated, no setState call is needed here.
    _effectiveController.text = widget.initialValue ?? '';
    super.reset();
  }

  void _handleControllerChanged() {
    // Suppress changes that originated from within this class.
    //
    // In the case where a controller has been passed in to this widget, we
    // register this change listener. In these cases, we'll also receive change
    // notifications for changes originating from within this class -- for
    // example, the reset() method. In such cases, the FormField value will
    // already have been set.
    if (_effectiveController.text != value) {
      didChange(_effectiveController.text);
    }
  }
}

class CleanableTextField extends StatefulWidget {
  const CleanableTextField({
    Key? key,
    this.formKey,
    required this.controller,
    this.labelText,
    this.decoration,
    this.onTap,
    this.validator,
    this.resetValueGetter,
    this.readOnly = false,
    this.disableFocus = false,
    this.suffixText,
    this.keyboardType,
    this.showIconClean = true,
    this.autoValidateMode,
    this.textCapitalization = TextCapitalization.none,
    this.inputFormatters,
    this.hinText,
  }) : super(key: key);

  final GlobalKey<FormFieldState>? formKey;
  final TextEditingController controller;
  final String? labelText;
  final InputDecoration? decoration;
  final GestureTapCallback? onTap;
  final String? Function(String?)? validator;
  final AutovalidateMode? autoValidateMode;
  final String Function()? resetValueGetter;
  final bool readOnly;

  final bool disableFocus;
  final String? suffixText;
  final TextInputType? keyboardType;
  final bool showIconClean;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final String? hinText;

  @override
  State<CleanableTextField> createState() => _CleanableTextFieldState();
}

class _CleanableTextFieldState extends State<CleanableTextField> {
  late final _DisableFocusNode? _focusNode;
  late final ValueNotifier<bool> _shouldShowClearButton = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _focusNode = widget.disableFocus ? _DisableFocusNode() : null;
  }

  void _effectiveOnTapHandle() {
    if (!_shouldShowClearButton.value) {
      _shouldShowClearButton.value = true;
    }
    widget.onTap?.call();
  }

  @override
  Widget build(BuildContext context) {
    late final buttonClear = ValueListenableBuilder(
      valueListenable: widget.controller,
      child: IconButton(
        onPressed: () {
          widget.controller.text = widget.resetValueGetter?.call() ?? "";
        },
        icon: Icon(
          // Remix.close_circle_fill,
          Icons.ac_unit,
          size: 20,
          color: AppColorTheme.of(context).gray.shade500,
        ),
      ),
      builder: (context, TextEditingValue value, Widget? child) {
        return Visibility(
          visible: value.text.isNotEmpty,
          child: child!,
        );
      },
    );

    return CustomTextFormField(
      inputFormatters: widget.inputFormatters,
      textCapitalization: widget.textCapitalization,
      key: widget.formKey,
      controller: widget.controller,
      focusNode: _focusNode,
      labelText: widget.labelText,
      isDense: true,
      readOnly: widget.readOnly,
      enableInteractiveSelection: widget.readOnly ? false : null,
      keyboardType: widget.keyboardType,
      decoration: (widget.decoration ?? const InputDecoration()).copyWith(
        suffixText: widget.suffixText,
        enabledBorder: widget.readOnly == false
            ? null
            : const UnderlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.transparent)),
        focusedBorder: widget.readOnly == false
            ? null
            : const UnderlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.transparent)),
        hintText: widget.hinText,
      ),
      onTap:
          widget.showIconClean == false ? widget.onTap : _effectiveOnTapHandle,
      validator: widget.validator,
      autovalidateMode: widget.autoValidateMode,
      stackChildren: widget.readOnly || widget.showIconClean == false
          ? null
          : [
              Positioned(
                right: -8 * 2,
                bottom: -11 + 8,
                child: ValueListenableBuilder(
                  valueListenable: _shouldShowClearButton,
                  child: buttonClear,
                  builder: (context, value, child) => Visibility(
                    visible: value,
                    child: child!,
                  ),
                ),
              ),
            ],
    );
  }
}

class _DisableFocusNode extends FocusNode {
  // @override
  // bool get canRequestFocus => false;

  @override
  bool get hasFocus => false;
}
