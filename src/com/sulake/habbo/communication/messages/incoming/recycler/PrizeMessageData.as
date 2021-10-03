package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_1509:int;
      
      private var var_2025:String;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_2025 = param1.readString();
         var_1509 = param1.readInteger();
      }
      
      public function get productItemTypeId() : int
      {
         return var_1509;
      }
      
      public function get productItemType() : String
      {
         return var_2025;
      }
   }
}
