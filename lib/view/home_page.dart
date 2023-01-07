import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiple_dropdown/controller/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  dropDown(
                    items: homePageController.continents,
                    selectedValue: homePageController.selectedContinent,
                    ontap: homePageController.continentTap,
                  ),
                  dropDown(
                    items: homePageController
                        .countries[homePageController.selectedContinent]!,
                    selectedValue: homePageController.selectedCountry,
                    ontap: homePageController.countryTap,
                  ),
                  dropDown(
                    items: homePageController
                        .states[homePageController.selectedCountry]!,
                    selectedValue: homePageController.selectedState,
                    ontap: homePageController.stateTap,
                  ),
                  dropDown(
                    items: homePageController
                        .districts[homePageController.selectedState]!,
                    selectedValue: homePageController.selectedDistrict,
                    ontap: homePageController.districtTap,
                  ),
                  dropDown(
                    items: homePageController
                        .taluks[homePageController.selectedDistrict]!,
                    selectedValue: homePageController.selectedTaluk,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Obx dropDown({
    required RxString selectedValue,
    required List<String> items,
    var ontap,
  }) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(top: 15),
        child: DropdownButton<String>(
          value: selectedValue.value,
          items: items
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ),
              )
              .toList(),
          onChanged: (value) {
            selectedValue.value = value.toString();
            ontap();
            setState(() {});
          },
        ),
      ),
    );
  }
}
