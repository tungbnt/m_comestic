import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mcomestic/common/components/widget_text_field.dart';

import 'package:mcomestic/domain/models/country_dialling_code.dart';
import 'package:mcomestic/modules/util/app_gap.dart';



class PhoneNumberField extends StatefulWidget {
   PhoneNumberField({
    super.key,
    this.onTap,
     this.selectedCodeData = CountryDiallingCode.vi,
    required this.controller,
    this.formKey,
    this.readOnly = false,
    this.validator,
    this.textInputType,
  });

  final VoidCallback? onTap;
   late  CountryDiallingCode? selectedCodeData;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final GlobalKey<FormFieldState>? formKey;
  final bool readOnly;
  final TextInputType? textInputType;

  @override
  State<PhoneNumberField> createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {

  @override
  Widget build(BuildContext context) {

    return CleanableTextField(
      inputFormatters: [
        FilteringTextInputFormatter.deny(
          RegExp(r'^0+'),
        ),
      ],
      keyboardType: widget.textInputType,
      readOnly: widget.readOnly,
      disableFocus: widget.readOnly,
      showIconClean: !widget.readOnly,
      formKey: widget.formKey,
      onTap: widget.onTap,
      autoValidateMode: AutovalidateMode.disabled,
      controller: widget.controller,
      decoration: InputDecoration(
        enabledBorder: widget.readOnly == false
            ? null
            : const UnderlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.transparent)),
        focusedBorder: widget.readOnly == false
            ? null
            : const UnderlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.transparent),
              ),
        contentPadding: const EdgeInsets.only(top: 15),
        prefixIcon: widget.readOnly == true
            ? null
            : SizedBox(
                width: 8 + 45 + 8 + 35,
                child: Row(
                  children: [
                    DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: false,
                        child: DropdownButton<CountryDiallingCode>(
                          iconSize: 16,
                          icon: const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Icon(Icons.arrow_back_ios_new_outlined),
                          ),
                          onChanged: (value) {
                            if (value != null) {
                              setState(
                                () {
                                  widget.selectedCodeData = value;
                                },
                              );
                            }
                          },
                          value: widget.selectedCodeData,
                          items: CountryDiallingCode.values.map(
                            (entry) {
                              return DropdownMenuItem<CountryDiallingCode>(
                                value: entry,
                                child: SvgPicture.asset(entry.svgIconPath),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ),
                    AppGap.w8,
                    const Box(
                      width: 1,
                      height: 20,
                      color: Colors.grey,
                    ),
                    AppGap.w8,
                    Text(
                      widget.selectedCodeData!.code,
                    ),
                  ],
                ),
              ),
      ),
      validator: widget.validator,
    );
  }
}
