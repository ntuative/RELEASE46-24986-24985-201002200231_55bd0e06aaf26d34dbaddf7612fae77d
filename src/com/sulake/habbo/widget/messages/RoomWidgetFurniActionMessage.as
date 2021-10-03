package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_237:String = "RWFAM_MOVE";
      
      public static const const_593:String = "RWFUAM_ROTATE";
      
      public static const const_723:String = "RWFAM_PICKUP";
       
      
      private var var_1648:int = 0;
      
      private var var_2081:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1648 = param2;
         var_2081 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1648;
      }
      
      public function get furniCategory() : int
      {
         return var_2081;
      }
   }
}
