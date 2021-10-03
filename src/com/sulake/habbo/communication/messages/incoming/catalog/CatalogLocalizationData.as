package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogLocalizationData
   {
       
      
      private var var_569:Array;
      
      private var var_833:Array;
      
      public function CatalogLocalizationData(param1:IMessageDataWrapper)
      {
         super();
         var_833 = new Array();
         var_569 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_833.push(param1.readString());
            _loc3_++;
         }
         var _loc4_:int = param1.readInteger();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            var_569.push(param1.readString());
            _loc5_++;
         }
      }
      
      public function get texts() : Array
      {
         return var_569;
      }
      
      public function get images() : Array
      {
         return var_833;
      }
   }
}
