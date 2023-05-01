# Telecom Case Study

## <ins>Introduction

The `Telecom Case Study` analyses the impact 

Looks into a sample Telecom data to minimize operational cost due to high bank fees from credit card/checks 
and increase revenue

__Targeted User:__ This information will be useful for the marketing team in telecom companies

__Technologies:__
> <span> SQL | MySQL Workbench | Kaggle </span>

## <ins> Table Structure - Reducing Operation Cost

#### Original table structure:
![my image](./assets/originalTable.png)

#### Calculating operational cost for credit card and checks:
![my image](./assets/newTable.png)

#### Yearly cost for payment by credit card and checks:
![my image](./assets/opCost.png)


## <ins> Analysis

#### Reducing Operational Cost

The company is loosing approximately $50,000 a year, this is for a sample size of 7000 with the 
following assumptions:
   
   - Analyses data 
   - Credit card fee is 1.5%
   - Internal processing fee for checks are 0.5%
   - Only monthly charges are taken into account (regardless of contract)

This number would increase significantly for big companies where the number of active users 
might cross 1 Million. One way to save this money is by providing incentives to have
customers pay by pre-authorized debit.
