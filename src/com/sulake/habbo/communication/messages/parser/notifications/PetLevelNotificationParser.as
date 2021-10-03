package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_547:String;
      
      private var var_1690:int;
      
      private var var_1691:String;
      
      private var var_985:int;
      
      private var var_1218:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1218;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1218 = param1.readInteger();
         var_1691 = param1.readString();
         var_1690 = param1.readInteger();
         var_547 = param1.readString();
         var_985 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1691;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_547;
      }
      
      public function get petType() : int
      {
         return var_985;
      }
      
      public function get level() : int
      {
         return var_1690;
      }
   }
}
