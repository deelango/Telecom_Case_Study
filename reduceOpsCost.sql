/*
Author: Deepak Elango
Date: April 30th, 2023
Description: Telecom Case Study looking into how much the company pays per year as a result of customers paying by credit card, electronic and mailed checks
*/

-- Part A: Reduce Operational Cost: Bank Charges
-- Assumptions:
   -- Credit card fee is 1.5%
   -- Internal processing fee for checks are 0.5%
   -- Only monthly charges are taken into account (regardless of contract)

-- Create new table with only required information from source table
-- Make sure we have churn = No as we want active customers list
use telco_analysis;
CREATE TABLE telco_data_opr_cost AS
SELECT td.customerID, td.PhoneService, td.InternetService, td.PaymentMethod, td.MonthlyCharges
FROM telco_data td
WHERE td.Churn = "No";

-- Calculate how much the company loses from credit card fees and processing costs for checks from view

-- Processing cost for credit card payment
ALTER TABLE telco_data_opr_cost ADD COLUMN MoneyLostCredit DOUBLE;
UPDATE telco_data_opr_cost
SET MoneyLostCredit =
CASE
    WHEN PaymentMethod='Credit card (automatic)'  THEN MonthlyCharges*0.015
    ELSE null
END;

-- Processing cost for checks that are mailed/electronic
ALTER TABLE telco_data_opr_cost ADD COLUMN MoneyLostChecks DOUBLE;
UPDATE telco_data_opr_cost
SET MoneyLostChecks =
CASE
    WHEN PaymentMethod='Electronic check' OR PaymentMethod='Mailed check'  THEN MonthlyCharges*0.05
    ELSE null
END;
*/

-- How much money are we loosing every year as a result of these fees
SELECT COUNT(MoneyLostCredit)*12 AS credit, COUNT(MoneyLostChecks)*12 AS checks
from telco_data_opr_cost;

