package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_969:int;
      
      private var var_1184:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_969 = param1;
         var_1184 = param2;
      }
      
      public function get itemType() : int
      {
         return var_969;
      }
      
      public function get itemName() : String
      {
         return var_1184;
      }
   }
}
