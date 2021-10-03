package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_540:Array;
      
      private var var_1132:int;
      
      private var var_1411:Array;
      
      private var var_539:Array;
      
      private var var_1710:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1710 = _loc2_.isWrappingEnabled;
         var_1132 = _loc2_.wrappingPrice;
         var_1411 = _loc2_.stuffTypes;
         var_539 = _loc2_.boxTypes;
         var_540 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_540;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1411;
      }
      
      public function get price() : int
      {
         return var_1132;
      }
      
      public function get boxTypes() : Array
      {
         return var_539;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1710;
      }
   }
}
