package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_128:int = 0;
      
      public static const const_103:int = 1;
      
      public static const const_99:int = 2;
      
      public static const const_575:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1168:int = 0;
      
      private var var_2196:String = "";
      
      private var var_190:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_190 = param2;
         var_1168 = param3;
         var_2196 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_2196;
      }
      
      public function get chatType() : int
      {
         return var_1168;
      }
      
      public function get text() : String
      {
         return var_190;
      }
   }
}
