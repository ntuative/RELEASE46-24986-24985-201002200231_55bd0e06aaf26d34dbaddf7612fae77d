package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1985:String;
      
      private var var_547:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_547 = param1;
         var_1985 = param2;
      }
      
      public function get race() : String
      {
         return var_1985;
      }
      
      public function get figure() : String
      {
         return var_547;
      }
   }
}
