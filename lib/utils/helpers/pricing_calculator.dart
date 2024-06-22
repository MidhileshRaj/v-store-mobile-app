class VStoreAppPriceCalculator{


  /// -- Calculate price depend on tax and shipping
  static double calculateTotalPrice(double productPrice,String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    double shippingCost = getShippingCost(location);
    double totalPrice = taxAmount+shippingCost+productPrice;
    return totalPrice;
  }

  static double getTaxRateForLocation(String location){
    // check taxes based on location and return the correct tax value according to the locaion
    return .10;
  }  static double getShippingCost(String location){
    // check taxes based on location and return the correct tax value according to the locaion
    return 10.0;
  }



}