package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1540:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1566:String = "ROE_MOUSE_ENTER";
      
      public static const const_397:String = "ROE_MOUSE_MOVE";
      
      public static const const_1421:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_217:String = "ROE_MOUSE_CLICK";
      
      public static const const_453:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1623:Boolean;
      
      private var var_1629:Boolean;
      
      private var var_1621:Boolean;
      
      private var var_1624:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1621 = param4;
         var_1624 = param5;
         var_1623 = param6;
         var_1629 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1629;
      }
      
      public function get altKey() : Boolean
      {
         return var_1621;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1624;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1623;
      }
   }
}
