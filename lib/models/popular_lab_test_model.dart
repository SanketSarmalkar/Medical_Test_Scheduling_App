class PopularLabTestModel {
  final String testName;
  final int testQuantity;
  final int testActualPrice;
  final int testDiscountedPrice;

  PopularLabTestModel({
    required this.testName,
    required this.testQuantity,
    required this.testActualPrice,
    required this.testDiscountedPrice,
  });

  factory PopularLabTestModel.fromJson(Map<String, dynamic> json) {
    return PopularLabTestModel(
      testName: json['testName'],
      testQuantity: json['testQuantity'],
      testActualPrice: json['testActualPrice'],
      testDiscountedPrice: json['testDiscountedPrice'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'testName': testName,
      'testQuantity': testQuantity,
      'testActualPrice': testActualPrice,
      'testDiscountedPrice': testDiscountedPrice,
    };
  }
}
