import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/core/utils/styles.dart';
import 'package:lafuu_e_commerce/core/utils/widgets/custom_btn.dart';
import 'package:lafuu_e_commerce/core/utils/widgets/custom_text_field.dart';

class AddressDataWidget extends StatelessWidget {
  const AddressDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Country or region',
          style: Styles.textStyle14,
        ),
        const SizedBox(height: 12),
        CSCPicker(
          currentCountry: 'Egypt',
          showCities: false,
          showStates: false,
          onCountryChanged: (value) {
            // setState(() {
            //   countryValue = value;
            // });
          },
        ),
        const SizedBox(height: 24),
        const Text(
          'First Name',
          style: Styles.textStyle14,
        ),
        const SizedBox(height: 12),
        const CustomTextFormField(),
        const SizedBox(height: 24),
        const Text(
          'Last Name',
          style: Styles.textStyle14,
        ),
        const SizedBox(height: 12),
        const CustomTextFormField(),
        const SizedBox(height: 24),
        const Text(
          'Street Address',
          style: Styles.textStyle14,
        ),
        const SizedBox(height: 12),
        const CustomTextFormField(),
        const SizedBox(height: 24),
        const Text(
          'Street Address 2 (Optional)',
          style: Styles.textStyle14,
        ),
        const SizedBox(height: 12),
        const CustomTextFormField(),
        const SizedBox(height: 24),
        const Text(
          'State/Province/Region',
          style: Styles.textStyle14,
        ),
        const SizedBox(height: 12),
        const CustomTextFormField(),
        const SizedBox(height: 24),
        const Text(
          'State/Province/Region',
          style: Styles.textStyle14,
        ),
        const SizedBox(height: 12),
        const CustomTextFormField(),
        const SizedBox(height: 24),
        const Text(
          'Phone Number',
          style: Styles.textStyle14,
        ),
        const SizedBox(height: 12),
        const CustomTextFormField(),
        const SizedBox(height: 20),
        CustomBtn(
          onPress: () {},
          child: const Text('Add Address'),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
