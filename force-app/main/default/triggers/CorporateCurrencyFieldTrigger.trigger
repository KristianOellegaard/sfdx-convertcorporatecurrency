trigger CorporateCurrencyFieldTrigger on Opportunity (before insert, before update) {
    for (Opportunity opportunity : Trigger.new) {
        opportunity.AmountCorporateCurrency__c = CorporateCurrencyConverter.convertToOrgCurrency(opportunity.CurrencyISOCode, opportunity.Amount, opportunity.CloseDate);
    }
}