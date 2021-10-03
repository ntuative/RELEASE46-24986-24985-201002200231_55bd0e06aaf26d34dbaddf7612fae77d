package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1431:Array;
      
      private var var_1651:int;
      
      private var var_1779:int;
      
      private var var_1781:int;
      
      private var var_1780:int;
      
      private var _dayOffsets:Array;
      
      private var var_1778:int;
      
      private var var_1430:Array;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1431;
      }
      
      public function get furniTypeId() : int
      {
         return var_1779;
      }
      
      public function get historyLength() : int
      {
         return var_1780;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1781;
      }
      
      public function get offerCount() : int
      {
         return var_1778;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1430;
      }
      
      public function get averagePrice() : int
      {
         return var_1651;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1651 = param1.readInteger();
         var_1778 = param1.readInteger();
         var_1780 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1431 = [];
         var_1430 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1431.push(param1.readInteger());
            var_1430.push(param1.readInteger());
            _loc3_++;
         }
         var_1781 = param1.readInteger();
         var_1779 = param1.readInteger();
         return true;
      }
   }
}
