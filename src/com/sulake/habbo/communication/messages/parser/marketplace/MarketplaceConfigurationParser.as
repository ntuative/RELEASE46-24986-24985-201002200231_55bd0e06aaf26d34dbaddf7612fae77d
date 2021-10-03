package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1714:int;
      
      private var var_1413:int;
      
      private var var_1711:int;
      
      private var var_1707:int;
      
      private var var_1708:int;
      
      private var var_1412:int;
      
      private var var_1712:int;
      
      private var var_1710:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1714;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1413;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1712;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1707;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1708;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1412;
      }
      
      public function get commission() : int
      {
         return var_1711;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1710 = param1.readBoolean();
         var_1711 = param1.readInteger();
         var_1413 = param1.readInteger();
         var_1412 = param1.readInteger();
         var_1707 = param1.readInteger();
         var_1714 = param1.readInteger();
         var_1708 = param1.readInteger();
         var_1712 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1710;
      }
   }
}
