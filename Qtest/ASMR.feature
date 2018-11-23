@anonymous-SMR
Feature: Anonymous_Submit_Meter_Reading

@ASMR_Invalid_Account_And_meter
Scenario Outline: Verify whether the customer is displayed with appropriate error message when invalid details are entered
Given user lands on SMR page
When user navigate to the SMR page for "<fuel-type>"
And user enter the "<email-address>","<account-Number>","<postcode>" for "<fuel-type>"
Then Error message is displayed as "<error-message>" for "<error-type>"
Examples:
|account-Number|postcode|email-address|type|error-type|fuel-type|error-message|
|600783816|NE38 8QB|Tester@bgdigitaltest.co.uk|Invalid_Postcode|ASMR-invalid|Electricity|The postcode you've entered for this account doesn't match our records. It should match the site postcode on your bill.|