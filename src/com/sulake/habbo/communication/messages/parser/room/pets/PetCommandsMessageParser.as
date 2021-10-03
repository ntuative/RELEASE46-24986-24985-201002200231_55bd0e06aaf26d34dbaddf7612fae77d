package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_943:Array;
      
      private var var_1218:int;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1218 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_943 = new Array();
         while(_loc2_-- > 0)
         {
            var_943.push(param1.readInteger());
         }
         return true;
      }
      
      public function get enabledCommands() : Array
      {
         return var_943;
      }
      
      public function get petId() : int
      {
         return var_1218;
      }
      
      public function flush() : Boolean
      {
         var_1218 = -1;
         var_943 = null;
         return true;
      }
   }
}
