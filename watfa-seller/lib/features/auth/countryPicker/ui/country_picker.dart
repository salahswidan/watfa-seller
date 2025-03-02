import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/widgets/auth_text_form_field.dart';
import '../data/models/all_country_with_flag.dart';
import '../logic/cubit/get_all_countries_cubit.dart';
import '../logic/cubit/get_all_countries_state.dart';

class CountryPicker extends StatefulWidget {
  final TextEditingController controller;
  final Function(String?) validator;
  final String? countryflag;
  const CountryPicker({
    super.key,
    required this.validator,
    required this.controller,
    this.countryflag,
  });

  @override
  State<CountryPicker> createState() => _CountryPickerState();
}

class _CountryPickerState extends State<CountryPicker> {
  String? countryValue = '';
  String? firstCountryFlag;
  String? fifthCountryFlag;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllCountriesCubit, GetAllCountriesState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            context.read<GetAllCountriesCubit>().getAllCountries();
            return Container();
          },
          loading: () {
            List<AllCountryWithFlag> countryList = [];
            return Expanded(
              child: Column(
                children: [
                  AuthTextFormField(
                    validator: widget.validator,
                    readOnly: false,
                    keyboardType: TextInputType.number,
                    controller: widget.controller,
                    hintText: 'Your number'.tr(context),
                    needPrefixIcon: true,
                    prefixIconConstraints:
                        const BoxConstraints(minHeight: 35, minWidth: 35),
                    prefixIcon: Padding(
                      padding: const EdgeInsetsDirectional.only(
                          top: 6, bottom: 6, start: 6),
                      child: IntrinsicHeight(
                        child: InkWell(
                          onTap: () => _showCountryBottomSheet(
                            context: context,
                            countryData: countryList,
                            onTap: (selectedCountry) {
                              setState(() {
                                countryValue = selectedCountry.flag;
                                Constants.selectedCountryFlag =
                                    selectedCountry.flag;
                                Constants.selectedPhone = selectedCountry.phone;

                                Constants.selectedCountryname =
                                    selectedCountry.name;
                              });
                              Navigator.pop(context);
                            },
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.keyboard_arrow_down_outlined,
                              ),
                              countryValue != ''
                                  ? Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          start: 8),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image(
                                          image: NetworkImage(countryValue!),
                                          width: 24,
                                          height: 24,
                                        ),
                                      ),
                                    )
                                  : fifthCountryFlag != null
                                      ? Padding(
                                          padding:
                                              const EdgeInsetsDirectional.only(
                                                  start: 8),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            child: Image(
                                              image: NetworkImage(
                                                  fifthCountryFlag!),
                                              width: 24,
                                              height: 24,
                                            ),
                                          ),
                                        )
                                      : const SizedBox(),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    end: 16.0, start: 8.0),
                                child: Container(
                                  color: Colors.grey,
                                  width: 1,
                                  height: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          success: (data) {
            List<AllCountryWithFlag> countryList = data.data;
            if (firstCountryFlag == null && countryList.isNotEmpty) {
              firstCountryFlag = countryList.first.flag;
            }
            if (fifthCountryFlag == null && countryList.length >= 5) {
              fifthCountryFlag = countryList[4].flag; // default country
            }
            if (widget.countryflag != null && countryValue == '') {
              try {
                setState(() {
                  countryValue = countryList
                      .firstWhere(
                        (element) => element.flag == widget.countryflag,
                      )
                      .flag;
                });
              } catch (e) {
                print(widget.countryflag);
                print(e);
                // Handle the case where the element is not found
                countryValue = ''; // or any default value
              }
            }
            return Expanded(
              child: Column(
                children: [
                  AuthTextFormField(
                    validator: widget.validator,
                    readOnly: false,
                    keyboardType: TextInputType.number,
                    controller: widget.controller,
                    hintText: 'Your number'.tr(context),
                    needPrefixIcon: true,
                    prefixIconConstraints:
                        const BoxConstraints(minHeight: 35, minWidth: 35),
                    prefixIcon: Padding(
                      padding: const EdgeInsetsDirectional.only(
                          top: 6, bottom: 6, start: 6),
                      child: IntrinsicHeight(
                        child: InkWell(
                          onTap: () => _showCountryBottomSheet(
                            context: context,
                            countryData: countryList,
                            onTap: (selectedCountry) {
                              setState(() {
                                countryValue = selectedCountry.flag;
                                Constants.selectedCountryFlag =
                                    selectedCountry.flag;
                                Constants.selectedPhone = selectedCountry.phone;

                                Constants.selectedCountryname =
                                    selectedCountry.name;
                              });
                              Navigator.pop(context);
                            },
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.keyboard_arrow_down_outlined,
                              ),
                              countryValue != ''
                                  ? Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          start: 8),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image(
                                          image: NetworkImage(countryValue!),
                                          width: 24,
                                          height: 24,
                                        ),
                                      ),
                                    )
                                  : fifthCountryFlag != null
                                      ? Padding(
                                          padding:
                                              const EdgeInsetsDirectional.only(
                                                  start: 8),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            child: Image(
                                              image: NetworkImage(
                                                  fifthCountryFlag!),
                                              width: 24,
                                              height: 24,
                                            ),
                                          ),
                                        )
                                      : const SizedBox(),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    end: 16.0, start: 8.0),
                                child: Container(
                                  color: Colors.grey,
                                  width: 1,
                                  height: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          error: (error) {
            return Center(
              child: Text(
                error,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.red,
                    ),
              ),
            );
          },
        );
      },
    );
  }
}

void _showCountryBottomSheet({
  required BuildContext context,
  required List<AllCountryWithFlag> countryData,
  required void Function(AllCountryWithFlag) onTap,
}) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Text(
            "chooseYourCountry".tr(context),
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontSize: 16,
                ),
          ),
          const Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 16.0,
              start: 16,
              end: 16,
            ),
            child: Opacity(
              opacity: 0.2,
              child: Divider(),
            ),
          ),
          _countriesList(
            countryData: countryData,
            onTap: (AllCountryWithFlag selectedCountry) {
              onTap(selectedCountry);
            },
          ),
        ],
      );
    },
  );
}

Widget _countriesList({
  required List<AllCountryWithFlag> countryData,
  required void Function(AllCountryWithFlag) onTap,
}) {
  return Expanded(
    child: countryData.isEmpty
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            itemCount: countryData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: InkWell(
                  onTap: () {
                    onTap(countryData[index]);
                  },
                  child: Row(
                    children: [
                      FadeInLeft(
                        delay: Duration(milliseconds: 5 * index),
                        child: Row(
                          children: [
                            Image(
                              image: NetworkImage(countryData[index].flag),
                              width: 28,
                              height: 28,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                countryData[index].phone,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      FadeInRight(
                        delay: Duration(milliseconds: 5 * index),
                        child: Text(
                          countryData[index].name,
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.w400,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
  );
}
