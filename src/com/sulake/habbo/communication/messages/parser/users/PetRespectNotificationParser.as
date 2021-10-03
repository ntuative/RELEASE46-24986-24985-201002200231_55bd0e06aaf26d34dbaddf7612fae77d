package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1791:int;
      
      private var var_1187:PetData;
      
      private var var_1792:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1791;
      }
      
      public function get petData() : PetData
      {
         return var_1187;
      }
      
      public function flush() : Boolean
      {
         var_1187 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1792;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1791 = param1.readInteger();
         var_1792 = param1.readInteger();
         var_1187 = new PetData(param1);
         return true;
      }
   }
}
