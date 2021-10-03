package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_219:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_219 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_219;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_219 = new RoomSettingsFlatInfo();
         var_219.allowFurniMoving = param1.readInteger() == 1;
         var_219.doorMode = param1.readInteger();
         var_219.id = param1.readInteger();
         var_219.ownerName = param1.readString();
         var_219.type = param1.readString();
         var_219.name = param1.readString();
         var_219.description = param1.readString();
         var_219.showOwnerName = param1.readInteger() == 1;
         var_219.allowTrading = param1.readInteger() == 1;
         var_219.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
