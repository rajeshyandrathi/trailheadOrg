public class CountryCodeHelper {
  public static string getCountryCode(String country) {
    /*Country_Code__mdt countryCode = [
      SELECT Id, MasterLabel, Country_Code__c
      FROM Country_Code__mdt
      WHERE MasterLabel = :country
      LIMIT 1
    ];*/
     
    Country_Code__mdt countryCode = Country_Code__mdt.getInstance(country);
    return countryCode.Country_Code__c;
  }
}