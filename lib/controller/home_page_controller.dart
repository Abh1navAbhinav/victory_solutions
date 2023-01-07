import 'package:get/get.dart';

class HomePageController extends GetxController {
//

  RxString selectedContinent = 'continent'.obs;
  RxString selectedCountry = 'country'.obs;
  RxString selectedState = 'state'.obs;
  RxString selectedDistrict = 'district'.obs;
  RxString selectedTaluk = 'taluk'.obs;

//
  List<String> continents = [
    'continent',
    'Asia',
    'North America',
  ];

//

  Map<String, List<String>> countries = {
    'continent': ['country'],
    'Asia': ['country', 'India', 'Japan'],
    'North America': ['country', 'United States', 'Canada'],
  };

//

  Map<String, List<String>> states = {
    'country': ['state'],
    'India': ['state', 'Kerala', 'Tamil Nadu'],
    'Japan': ['state', 'Hokkaido', 'Kanto'],
    'United States': ['state', 'Texas', 'Alaska'],
    'Canada': ['state', 'Alberta', 'Columbia'],
  };

//

  Map<String, List<String>> districts = {
    'state': ['district'],
    'Kerala': ['district', 'Wayanad', 'Calicut'],
    'Tamil Nadu': ['district', 'Chennai', 'Coimbatore'],
    'Hokkaido': ['district', 'Hidaka Dst', 'Iburi Dst'],
    'Kanto': ['district', 'Tokyo', ' Yokohama'],
    'Texas': ['district', 'Abilene', 'Atlanta'],
    'Alaska': ['district', 'Alaska Dst 1', 'Alaska Dst 2'],
    'Alberta': ['district', 'Alberta Dst 1', 'Alberta Dst 2'],
    'Columbia': ['district', 'Columbia Dst 1', 'Columbia Dst 2'],
  };

//

  Map<String, List<String>> taluks = {
    'district': ['taluk'],
    'Wayanad': ['taluk', 'Vythiri', 'Sulthan Bathery'],
    'Calicut': ['taluk', 'Koyilandy', 'Vadakara'],
    'Chennai': ['taluk', 'Ambattur', 'Ayanavaram'],
    'Coimbatore': ['taluk', 'Perur', 'Madukkarai'],
    'Hidaka Dst': ['taluk', 'Hidaka Tlk 1', 'Hidaka Tlk 2'],
    'Iburi Dst': ['taluk', 'Iburi Tlk 1', 'Iburi Tlk 2'],
    'Tokyo': ['taluk', 'Tokyo Tlk 1', 'Tokyo Tlk 2'],
    'Yokohama': ['taluk', 'Yokohama Tlk 1', 'Yokohama Tlk 2'],
    'Abilene': ['taluk', 'Abilene Tlk 1', 'Abilene Tlk 2'],
    'Atlanta': ['taluk', 'Atlanta Tlk 1', 'Atlanta Tlk 2'],
    'Alaska Dst 1': ['taluk', 'Alaska Dst 1 Tlk 1', 'Alaska Dst 1 Tlk 2'],
    'Alaska Dst 2': ['taluk', 'Alaska Dst 2 Tlk 1', 'Alaska Dst 2 Tlk 2'],
    'Alberta Dst 1': ['taluk', 'Alberta Dst 1 Tlk 1', 'Alberta Dst 1 Tlk 2'],
    'Alberta Dst 2': ['taluk', 'Alberta Dst 2 Tlk 1', 'Alberta Dst 2 Tlk 2'],
    'Columbia Dst 1': ['taluk', 'Columbia Dst 1 Tlk 1', 'Columbia Dst 1 Tlk 2'],
    'Columbia Dst 2': ['taluk', 'Columbia Dst 2 Tlk 1', 'Columbia Dst 2 Tlk 2'],
  };

// on tap of drop downs

  void continentTap() {
    selectedCountry.value = 'country';
    selectedState.value = 'state';
    selectedDistrict.value = 'district';
    selectedTaluk.value = 'taluk';
  }

  void countryTap() {
    selectedState.value = 'state';
    selectedDistrict.value = 'district';
    selectedTaluk.value = 'taluk';
  }

  void stateTap() {
    selectedDistrict.value = 'district';
    selectedTaluk.value = 'taluk';
  }

  void districtTap() {
    selectedTaluk.value = 'taluk';
  }
}
