//+------------------------------------------------------------------+
//|                                                      structs.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                        https://order-button.com/ |
//+------------------------------------------------------------------+
#property copyright "Copyright 2017, Keisuke Iwabuchi"
#property link      "https://order-button.com/"
#property strict


/** 発注時の価格データ */
struct TradePrice
{
   ORDER_PRICE type;
   double      value;
};


/** MQL4標準の発注関数OrderSendに渡すパラメータを一纏めにした構造体 */
struct OrderSendRequest
{
   TRADE_SIGNAL type;
   double       lots;
   TradePrice   price;
   int          slippage;
   TradePrice   stoploss;
   TradePrice   takeprofit;
   string       comment;
   int          magic;
   datetime     expiration;
   color        arrow;
};


/** MQL4標準の決済関数OrderCloseに渡すパラメータを一纏めにした構造体 */
struct OrderCloseRequest
{
   int    ticket;
   double lots;
   double price;
   int    slippage;
   color  arrow;
};


/** MQL4標準の注文変更関数OrderModifyに渡すパラメータを一纏めにした構造体 */
struct OrderModifyRequest
{
   int    ticket;
   double price;
   double stoploss;
   double takeprofit;
   int    expiration;
   color  arrow;
};


/** MQL4標準の待機注文取消関数OrderDeleteに渡すパラメータを一纏めにした構造体 */
struct OrderDeleteRequest
{
   int    ticket;
   color  arrow;
};
