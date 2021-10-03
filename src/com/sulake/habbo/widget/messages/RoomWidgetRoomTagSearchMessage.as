package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_637:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1762:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_637);
         var_1762 = param1;
      }
      
      public function get tag() : String
      {
         return var_1762;
      }
   }
}
