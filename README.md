# MQL4-Trade
Easy ordering process for MQL4


## Requirement
- [MQL4-Env](https://github.com/KeisukeIwabuchi/MQL4-Env)
- [MQL4-Order](https://github.com/KeisukeIwabuchi/MQL4-Order)
- [MQL4-Price](https://github.com/KeisukeIwabuchi/MQL4-Price)


## Install
1. Download 4 files from Github. (Trade.mqh, defines.mqh, enums.mqh, structs.mqh)
2. Save the file to /MQL4/Includes/mql4_modules/Trade/


## Usage
This module has four functions.

### Entry
Open market or place a pending order.  
To use this function, pass the **OrderSendRequest** structure.  
OrderSendRequest is a structure that summarizes the parameters required for ordering.  

Price specification method is distinctive.  
The price parameter is specified in the TradePrice structure.  
The TradePrice structure is specified by the ORDER_PRICE enumeration type and double value.  
The ORDER_PRICE enumeration type has three types of values.  
DYNAMIC_PRICE, DYNAMIC_PIPS and STATIC_PRICE.
If DYNAMIC_PRICE is specified, Ask or Bid will be used for the order price.
If DYNAMIC_PIPS is specified, the order price is used at the price value [pips] is added to the current price.
If STATIC_PRICE is specified, value will be used as is for the order price.

### Exit
Closes opened order.  
To use this function, pass the **OrderCloseRequest** structure.

### Modify
Modification of characteristics of the previously opened or pending orders.  
To use this function, pass the **OrderModifyRequest** structure.

### Delete
Deletes previously opned pending order.  
To use this function, pass the **OrderDeleteRequest** structure.
